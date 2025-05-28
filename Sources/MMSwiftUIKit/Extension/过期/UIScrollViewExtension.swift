////
////  File.swift
////  MMSwiftUIKit
////
////  Created by 小君夜麻吕 on 2025/5/13.
////
//
//import Foundation
//import UIKit
//
//public extension UIScrollView {
//    
//    @discardableResult func contentOffset(_ value: CGPoint) -> Self {
//        self.contentOffset = value
//        return self
//    }
//    
//    @discardableResult func contentSize(_ value: CGSize) -> Self {
//        self.contentSize = value
//        return self
//    }
//    
//    @discardableResult func contentInset(_ value: UIEdgeInsets) -> Self {
//        self.contentInset = value
//        return self
//    }
//    
//    @available(iOS 17.4, *)
//    @discardableResult func contentAlignmentPoint(_ value: CGPoint) -> Self {
//        self.contentAlignmentPoint = value
//        return self
//    }
//    
//    @discardableResult func contentInsetAdjustmentBehavior(_ value: UIScrollView.ContentInsetAdjustmentBehavior) -> Self {
//        self.contentInsetAdjustmentBehavior = value
//        return self
//    }
//    
//    @discardableResult func automaticallyAdjustsScrollIndicatorInsets(_ value: Bool) -> Self {
//        self.automaticallyAdjustsScrollIndicatorInsets = value
//        return self
//    }
//    
//    @discardableResult func delegate(_ value: (any UIScrollViewDelegate)?) -> Self {
//        self.delegate = value
//        return self
//    }
//    
//    @discardableResult func isDirectionalLockEnabled(_ value: Bool) -> Self {
//        self.isDirectionalLockEnabled = value
//        return self
//    }
//    
//    @discardableResult func bounces(_ value: Bool) -> Self {
//        self.bounces = value
//        return self
//    }
//    
//    @available(iOS 17.4, *)
//    @discardableResult func bouncesHorizontally(_ value: Bool) -> Self {
//        self.bouncesHorizontally = value
//        return self
//    }
//    
//    @available(iOS 17.4, *)
//    @discardableResult func bouncesVertically(_ value: Bool) -> Self {
//        self.bouncesVertically = value
//        return self
//    }
//    
//    @discardableResult func alwaysBounceVertical(_ value: Bool) -> Self {
//        self.alwaysBounceVertical = value
//        return self
//    }
//    
//    @discardableResult func alwaysBounceHorizontal(_ value: Bool) -> Self {
//        self.alwaysBounceHorizontal = value
//        return self
//    }
//    
//    @discardableResult func isPagingEnabled(_ value: Bool) -> Self {
//        self.isPagingEnabled = value
//        return self
//    }
//    
//    @discardableResult func isScrollEnabled(_ value: Bool) -> Self {
//        self.isScrollEnabled = value
//        return self
//    }
//    
//    @available(iOS 17.4, *)
//    @discardableResult func transfersHorizontalScrollingToParent(_ value: Bool) -> Self {
//        self.transfersHorizontalScrollingToParent = value
//        return self
//    }
//    
//    @available(iOS 17.4, *)
//    @discardableResult func transfersVerticalScrollingToParent(_ value: Bool) -> Self {
//        self.transfersVerticalScrollingToParent = value
//        return self
//    }
//    
//    @discardableResult func showsVerticalScrollIndicator(_ value: Bool) -> Self {
//        self.showsVerticalScrollIndicator = value
//        return self
//    }
//    
//    @discardableResult func showsHorizontalScrollIndicator(_ value: Bool) -> Self {
//        self.showsHorizontalScrollIndicator = value
//        return self
//    }
//    
//    @discardableResult func indicatorStyle(_ value: UIScrollView.IndicatorStyle) -> Self {
//        self.indicatorStyle = value
//        return self
//    }
//    
//    @discardableResult func verticalScrollIndicatorInsets(_ value: UIEdgeInsets) -> Self {
//        self.verticalScrollIndicatorInsets = value
//        return self
//    }
//    
//    @discardableResult func horizontalScrollIndicatorInsets(_ value: UIEdgeInsets) -> Self {
//        self.horizontalScrollIndicatorInsets = value
//        return self
//    }
//    
//    @discardableResult func scrollIndicatorInsets(_ value: UIEdgeInsets) -> Self {
//        self.scrollIndicatorInsets = value
//        return self
//    }
//    
//    @discardableResult func decelerationRate(_ value: UIScrollView.DecelerationRate) -> Self {
//        self.decelerationRate = value
//        return self
//    }
//    
//    @discardableResult func indexDisplayMode(_ value: UIScrollView.IndexDisplayMode) -> Self {
//        self.indexDisplayMode = value
//        return self
//    }
//    
//    @discardableResult func delaysContentTouches(_ value: Bool) -> Self {
//        self.delaysContentTouches = value
//        return self
//    }
//    
//    @discardableResult func canCancelContentTouches(_ value: Bool) -> Self {
//        self.canCancelContentTouches = value
//        return self
//    }
//    
//    @discardableResult func minimumZoomScale(_ value: CGFloat) -> Self {
//        self.minimumZoomScale = value
//        return self
//    }
//    
//    @discardableResult func maximumZoomScale(_ value: CGFloat) -> Self {
//        self.maximumZoomScale = value
//        return self
//    }
//    
//    @discardableResult func zoomScale(_ value: CGFloat) -> Self {
//        self.zoomScale = value
//        return self
//    }
//    
//    @discardableResult func bouncesZoom(_ value: Bool) -> Self {
//        self.bouncesZoom = value
//        return self
//    }
//    
//    @discardableResult func scrollsToTop(_ value: Bool) -> Self {
//        self.scrollsToTop = value
//        return self
//    }
//    
//    @discardableResult func keyboardDismissMode(_ value: UIScrollView.KeyboardDismissMode) -> Self {
//        self.keyboardDismissMode = value
//        return self
//    }
//    
//    @discardableResult func refreshControl(_ value: UIRefreshControl?) -> Self {
//        self.refreshControl = value
//        return self
//    }
//    
//    @available(iOS 17.0, *)
//    @discardableResult func allowsKeyboardScrolling(_ value: Bool) -> Self {
//        self.allowsKeyboardScrolling = value
//        return self
//    }
//}
