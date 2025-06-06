//
//  MMTabBarVC.swift
//  MMSwiftUIKit
//
//  Created by 小君夜麻吕 on 2025/5/13.
//

import UIKit
import Combine

@MainActor open class MMTabBarVC: UITabBarController {
    open override var childForStatusBarStyle: UIViewController?{ self.selectedViewController }
    open override var childForStatusBarHidden: UIViewController? { self.selectedViewController }
    public var cancellabel = Set<AnyCancellable>()
    public var mm: MMTabBarControllerChain<MMTabBarVC> { MMTabBarControllerChain(view: self) }
}
