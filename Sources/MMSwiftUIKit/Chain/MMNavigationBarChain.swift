//
//  MMNavigationBarChain.swift
//  MMSwiftUIKit
//
//  Created by 小君夜麻吕 on 2025/5/27.
//

import UIKit

public class MMNavigationBarChain<T>: MMViewChain<T> where T: UINavigationBar {
    
    @discardableResult public func barStyle(_ value: UIBarStyle) -> Self {
        self.view.barStyle = value
        return self
    }
    
    @discardableResult public func delegate(_ value: (any UINavigationBarDelegate)?) -> Self {
        self.view.delegate = value
        return self
    }
    
    @available(iOS 3.0, *)
    @discardableResult public func isTranslucent(_ value: Bool) -> Self {
        self.view.isTranslucent = value
        return self
    }
    
    @discardableResult public func pushItem(_ item: UINavigationItem, animated: Bool) -> Self {
        self.view.pushItem(item, animated: animated)
        return self
    }
    
    @discardableResult public func popItem(animated: Bool) -> Self {
        _ = self.view.popItem(animated: animated)
        return self
    }
    
    @discardableResult public func items(_ value: [UINavigationItem]?) -> Self {
        self.view.items = value
        return self
    }
    
    @discardableResult public func setItems(_ items: [UINavigationItem]?, animated: Bool) -> Self {
        self.view.setItems(items, animated: animated)
        return self
    }
    
    @available(iOS 11.0, *)
    @discardableResult public func prefersLargeTitles(_ value: Bool) -> Self {
        self.view.prefersLargeTitles = value
        return self
    }
    
    @available(iOS 16.0, *)
    @discardableResult public func preferredBehavioralStyle(_ value: UIBehavioralStyle) -> Self {
        self.view.preferredBehavioralStyle = value
        return self
    }
    
    @discardableResult public func tintColor(_ value: UIColor) -> Self {
        self.view.tintColor = value
        return self
    }
    
    @available(iOS 7.0, *)
    @discardableResult public func barTintColor(_ value: UIColor?) -> Self {
        self.view.barTintColor = value
        return self
    }
    
    @available(iOS 7.0, *)
    @discardableResult public func setBackgroundImage(_ backgroundImage: UIImage?, for barPosition: UIBarPosition, barMetrics: UIBarMetrics) -> Self {
        self.view.setBackgroundImage(backgroundImage, for: barPosition, barMetrics: barMetrics)
        return self
    }
    
    @available(iOS 5.0, *)
    @discardableResult public func setBackgroundImage(_ backgroundImage: UIImage?, for barMetrics: UIBarMetrics) -> Self {
        self.view.setBackgroundImage(backgroundImage, for: barMetrics)
        return self
    }
    
    @available(iOS 6.0, *)
    @discardableResult public func shadowImage(_ value: UIImage?) -> Self {
        self.view.shadowImage = value
        return self
    }
    
    @available(iOS 5.0, *)
    @discardableResult public func titleTextAttributes(_ value: [NSAttributedString.Key : Any]?) -> Self {
        self.view.titleTextAttributes = value
        return self
    }
    
    @available(iOS 11.0, *)
    @discardableResult public func largeTitleTextAttributes(_ value: [NSAttributedString.Key : Any]?) -> Self {
        self.view.largeTitleTextAttributes = value
        return self
    }
    
    @available(iOS 5.0, *)
    @discardableResult public func setTitleVerticalPositionAdjustment(_ adjustment: CGFloat, for barMetrics: UIBarMetrics) -> Self {
        self.view.setTitleVerticalPositionAdjustment(adjustment, for: barMetrics)
        return self
    }
    
    @available(iOS 7.0, *)
    @discardableResult public func backIndicatorImage(_ value: UIImage?) -> Self {
        self.view.backIndicatorImage = value
        return self
    }
    
    @available(iOS 7.0, *)
    @discardableResult public func backIndicatorTransitionMaskImage(_ value: UIImage?) -> Self {
        self.view.backIndicatorTransitionMaskImage = value
        return self
    }
    
    @available(iOS 13.0, *)
    @discardableResult public func standardAppearance(_ value: UINavigationBarAppearance) -> Self {
        self.view.standardAppearance = value
        return self
    }
    
    @available(iOS 13.0, *)
    @discardableResult public func compactAppearance(_ value: UINavigationBarAppearance?) -> Self {
        self.view.compactAppearance = value
        return self
    }
    
    @available(iOS 13.0, *)
    @discardableResult public func scrollEdgeAppearance(_ value: UINavigationBarAppearance?) -> Self {
        self.view.scrollEdgeAppearance = value
        return self
    }
    
    @available(iOS 15.0, *)
    @discardableResult public func compactScrollEdgeAppearance(_ value: UINavigationBarAppearance?) -> Self {
        self.view.compactScrollEdgeAppearance = value
        return self
    }
}
