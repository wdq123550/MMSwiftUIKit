//
//  MMTabBarControllerChain.swift
//  MMSwiftUIKit
//
//  Created by 小君夜麻吕 on 2025/5/27.
//

import UIKit

public class MMTabBarControllerChain<T>: MMViewControllerChain<T> where T: UITabBarController {
    
    @discardableResult public func setViewControllers(_ viewControllers: [UIViewController]?, animated: Bool) -> Self {
        self.view.setViewControllers(viewControllers, animated: animated)
        return self
    }
    
    @discardableResult public func selectedViewController(_ value: UIViewController?) -> Self {
        self.view.selectedViewController = value
        return self
    }
    
    @discardableResult public func selectedIndex(_ value: Int) -> Self {
        self.view.selectedIndex = value
        return self
    }
    
    @discardableResult public func customizableViewControllers(_ value: [UIViewController]?) -> Self {
        self.view.customizableViewControllers = value
        return self
    }
    
    @discardableResult public func delegate(_ value: (any UITabBarControllerDelegate)?) -> Self {
        self.view.delegate = value
        return self
    }
    
    @available(iOS 18.0, *)
    @discardableResult public func mode(_ value: UITabBarController.Mode) -> Self {
        self.view.mode = value
        return self
    }
    
    @available(iOS 18.0, *)
    @discardableResult public func customizationIdentifier(_ value: String?) -> Self {
        self.view.customizationIdentifier = value
        return self
    }
    
    @available(iOS 18.0, *)
    @discardableResult public func compactTabIdentifiers(_ value: [String]?) -> Self {
        self.view.compactTabIdentifiers = value
        return self
    }
    
    @available(iOS 18.0, *)
    @discardableResult public func selectedTab(_ value: UITab?) -> Self {
        self.view.selectedTab = value
        return self
    }
    
    @available(iOS 18.0, *)
    @discardableResult public func tabs(_ value: [UITab]) -> Self {
        self.view.tabs = value
        return self
    }
    
    @available(iOS 18.0, *)
    @discardableResult public func setTabs(_ tabs: [UITab], animated: Bool) -> Self {
        self.view.setTabs(tabs, animated: animated)
        return self
    }
    
    @available(iOS 18.0, *)
    @discardableResult public func setTabBarHidden(_ hidden: Bool, animated: Bool) -> Self {
        self.view.setTabBarHidden(hidden, animated: animated)
        return self
    }
    
    // MARK: - UIViewController Extension
    
    @discardableResult public func tabBarItem(_ value: UITabBarItem) -> Self {
        self.view.tabBarItem = value
        return self
    }
}
