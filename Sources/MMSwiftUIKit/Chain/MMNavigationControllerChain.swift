//
//  MMNavigationControllerChain.swift
//  MMSwiftUIKit
//
//  Created by 小君夜麻吕 on 2025/5/27.
//

import UIKit

public class MMNavigationControllerChain<T>: MMViewControllerChain<T> where T: UINavigationController {
    
    @discardableResult public func pushViewController(_ viewController: UIViewController, animated: Bool) -> Self {
        self.view.pushViewController(viewController, animated: animated)
        return self
    }
    
    @discardableResult public func popViewController(animated: Bool) -> Self {
        _ = self.view.popViewController(animated: animated)
        return self
    }
    
    @discardableResult public func popToViewController(_ viewController: UIViewController, animated: Bool) -> Self {
        _ = self.view.popToViewController(viewController, animated: animated)
        return self
    }
    
    @discardableResult public func popToRootViewController(animated: Bool) -> Self {
        _ = self.view.popToRootViewController(animated: animated)
        return self
    }
    
    @available(iOS 3.0, *)
    @discardableResult public func setViewControllers(_ viewControllers: [UIViewController], animated: Bool) -> Self {
        self.view.setViewControllers(viewControllers, animated: animated)
        return self
    }
    
    @discardableResult public func setNavigationBarHidden(_ hidden: Bool, animated: Bool) -> Self {
        self.view.setNavigationBarHidden(hidden, animated: animated)
        return self
    }
    
    @available(iOS 3.0, *)
    @discardableResult public func setToolbarHidden(_ hidden: Bool, animated: Bool) -> Self {
        self.view.setToolbarHidden(hidden, animated: animated)
        return self
    }
    
    @discardableResult public func delegate(_ value: (any UINavigationControllerDelegate)?) -> Self {
        self.view.delegate = value
        return self
    }
    
    @available(iOS 8.0, *)
    @discardableResult public func hidesBarsWhenKeyboardAppears(_ value: Bool) -> Self {
        self.view.hidesBarsWhenKeyboardAppears = value
        return self
    }
    
    @available(iOS 8.0, *)
    @discardableResult public func hidesBarsOnSwipe(_ value: Bool) -> Self {
        self.view.hidesBarsOnSwipe = value
        return self
    }
    
    @available(iOS 8.0, *)
    @discardableResult public func hidesBarsWhenVerticallyCompact(_ value: Bool) -> Self {
        self.view.hidesBarsWhenVerticallyCompact = value
        return self
    }
    
    @available(iOS 8.0, *)
    @discardableResult public func hidesBarsOnTap(_ value: Bool) -> Self {
        self.view.hidesBarsOnTap = value
        return self
    }
    
    // MARK: - UIViewController Extension
    
    @discardableResult public func hidesBottomBarWhenPushed(_ value: Bool) -> Self {
        self.view.hidesBottomBarWhenPushed = value
        return self
    }
    
    @available(iOS 3.0, *)
    @discardableResult public func setToolbarItems(_ toolbarItems: [UIBarButtonItem]?, animated: Bool) -> Self {
        self.view.setToolbarItems(toolbarItems, animated: animated)
        return self
    }
} 
