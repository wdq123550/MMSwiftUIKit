//
//  MMTabBarChain.swift
//  MMSwiftUIKit
//
//  Created by 小君夜麻吕 on 2025/5/27.
//

import UIKit

public class MMTabBarChain<T>: MMViewChain<T> where T: UITabBar {
    
    @discardableResult public func delegate(_ value: (any UITabBarDelegate)?) -> Self {
        self.view.delegate = value
        return self
    }
    
    @discardableResult public func items(_ value: [UITabBarItem]?) -> Self {
        self.view.items = value
        return self
    }
    
    @discardableResult public func selectedItem(_ value: UITabBarItem?) -> Self {
        self.view.selectedItem = value
        return self
    }
    
    @discardableResult public func setItems(_ items: [UITabBarItem]?, animated: Bool) -> Self {
        self.view.setItems(items, animated: animated)
        return self
    }
    
    @discardableResult public func beginCustomizingItems(_ items: [UITabBarItem]) -> Self {
        self.view.beginCustomizingItems(items)
        return self
    }
    
    @discardableResult public func endCustomizing(animated: Bool) -> Self {
        _ = self.view.endCustomizing(animated: animated)
        return self
    }
    
    @available(iOS 5.0, *)
    @discardableResult public func tintColor(_ value: UIColor) -> Self {
        self.view.tintColor = value
        return self
    }
    
    @available(iOS 7.0, *)
    @discardableResult public func barTintColor(_ value: UIColor?) -> Self {
        self.view.barTintColor = value
        return self
    }
    
    @available(iOS 10.0, *)
    @discardableResult public func unselectedItemTintColor(_ value: UIColor?) -> Self {
        self.view.unselectedItemTintColor = value
        return self
    }
    
    @available(iOS, introduced: 5.0, deprecated: 8.0)
    @discardableResult public func selectedImageTintColor(_ value: UIColor?) -> Self {
        self.view.selectedImageTintColor = value
        return self
    }
    
    @available(iOS 5.0, *)
    @discardableResult public func backgroundImage(_ value: UIImage?) -> Self {
        self.view.backgroundImage = value
        return self
    }
    
    @available(iOS 5.0, *)
    @discardableResult public func selectionIndicatorImage(_ value: UIImage?) -> Self {
        self.view.selectionIndicatorImage = value
        return self
    }
    
    @available(iOS 6.0, *)
    @discardableResult public func shadowImage(_ value: UIImage?) -> Self {
        self.view.shadowImage = value
        return self
    }
    
    @available(iOS 7.0, *)
    @discardableResult public func itemPositioning(_ value: UITabBar.ItemPositioning) -> Self {
        self.view.itemPositioning = value
        return self
    }
    
    @available(iOS 7.0, *)
    @discardableResult public func itemWidth(_ value: CGFloat) -> Self {
        self.view.itemWidth = value
        return self
    }
    
    @available(iOS 7.0, *)
    @discardableResult public func itemSpacing(_ value: CGFloat) -> Self {
        self.view.itemSpacing = value
        return self
    }
    
    @available(iOS 7.0, *)
    @discardableResult public func barStyle(_ value: UIBarStyle) -> Self {
        self.view.barStyle = value
        return self
    }
    
    @available(iOS 7.0, *)
    @discardableResult public func isTranslucent(_ value: Bool) -> Self {
        self.view.isTranslucent = value
        return self
    }
    
    @available(iOS 13.0, *)
    @discardableResult public func standardAppearance(_ value: UITabBarAppearance) -> Self {
        self.view.standardAppearance = value
        return self
    }
    
    @available(iOS 15.0, *)
    @discardableResult public func scrollEdgeAppearance(_ value: UITabBarAppearance?) -> Self {
        self.view.scrollEdgeAppearance = value
        return self
    }
}
