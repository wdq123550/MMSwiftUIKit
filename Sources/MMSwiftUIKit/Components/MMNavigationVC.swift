//
//  MMNavigationVC.swift
//  MMSwiftUIKit
//
//  Created by 小君夜麻吕 on 2025/5/13.
//

import UIKit
import Combine

@MainActor open class MMNavigationVC: UINavigationController {
    
    open override var childForStatusBarStyle: UIViewController?{ self.topViewController }
    open override var childForStatusBarHidden: UIViewController? { self.topViewController }
    public var mm: MMNavigationControllerChain<MMNavigationVC> { MMNavigationControllerChain(view: self) }
    public var cancellabel = Set<AnyCancellable>()
    public var isEnableFullScreenPopGesture: Bool = true {
        didSet {
            self.fullScreenPopGesture.isEnabled = isEnableFullScreenPopGesture
            self.interactivePopGestureRecognizer?.isEnabled = !isEnableFullScreenPopGesture
        }
    }
    
    public init(rootViewController: UIViewController, isEnableFullScreenPopGesture: Bool) {
        super.init(rootViewController: rootViewController)
        self.isEnableFullScreenPopGesture = isEnableFullScreenPopGesture
    }
    
    required public init?(coder aDecoder: NSCoder) { fatalError("init(coder:) has not been implemented") }
    
    
    open override func pushViewController(_ viewController: UIViewController, animated: Bool) {
        super.pushViewController(viewController, animated: animated)
        if self.children.count > 1 { viewController.hidesBottomBarWhenPushed = true } //隐藏tabBar
        if let vc = viewController as? MMVC, self.children.count > 1 {
            viewController.navigationItem.leftBarButtonItem = UIBarButtonItem(image: vc.navigationBackImage, style: .plain, target: vc, action: #selector(vc.navigationBack)) //设置被push的那个vc导航栏返回按钮
        }
    }
    
    /// 全屏返回的手势
    private lazy var fullScreenPopGesture: UIPanGestureRecognizer = {
        let fullScreenPopGesture = UIPanGestureRecognizer(target: self.interactivePopGestureRecognizer?.delegate, action: Selector(("handleNavigationTransition:")))//此方法为系统的方案，不需要我们去实现
        fullScreenPopGesture.delegate = self
        self.interactivePopGestureRecognizer?.view?.addGestureRecognizer(fullScreenPopGesture)
        return fullScreenPopGesture
    }()
}


extension MMNavigationVC: UIGestureRecognizerDelegate {
    
    /// 激活`全屏滑动返回手势`需要的一些条件，不满足就不激活
    open func gestureRecognizerShouldBegin(_ gestureRecognizer: UIGestureRecognizer) -> Bool {
        if self.children.count == 1 { return false } //只有一个子控制器，不返回
        if self.value(forKey: "_isTransitioning") as! Bool { return false } //控制器正在返回中，不返回
        if (gestureRecognizer as! UIPanGestureRecognizer).translation(in: gestureRecognizer.view).x <= 0 { return false } //不是右滑返回，不返回
        return true
    }
    
    /// 当识别到另外的手势时
    /// 手势优先级：
    /// 返回true: 全屏滑动返回手势 < 其他手势
    /// 返回false: 全屏滑动返回手势 > 其他手势
    open func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer, shouldRequireFailureOf otherGestureRecognizer: UIGestureRecognizer) -> Bool {
        guard let scrollView = otherGestureRecognizer.view as? UIScrollView else { return false }
        return scrollView.contentOffset.x == 0 ? false : true
    }
    
    /// 当识别到另外的手势时
    /// 手势优先级：
    /// 返回true: 全屏滑动返回手势 > 其他手势
    /// 返回false: 全屏滑动返回手势 < 其他手势
    open func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer, shouldBeRequiredToFailBy otherGestureRecognizer: UIGestureRecognizer) -> Bool {
        guard let scrollView = otherGestureRecognizer.view as? UIScrollView else { return false }
        return scrollView.contentOffset.x == 0 ? true : false
    }
}


