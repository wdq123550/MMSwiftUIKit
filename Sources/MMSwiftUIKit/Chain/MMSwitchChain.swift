//
//  MMSwitchChain.swift
//  MMSwiftUIKit
//
//  Created by 小君夜麻吕 on 2025/5/27.
//

import UIKit

public class MMSwitchChain<T>: MMControlChain<T> where T: UISwitch {
    
    @available(iOS 5.0, *)
    @discardableResult public func onTintColor(_ value: UIColor?) -> Self {
        self.view.onTintColor = value
        return self
    }
    
    @available(iOS 6.0, *)
    @discardableResult public func thumbTintColor(_ value: UIColor?) -> Self {
        self.view.thumbTintColor = value
        return self
    }
    
    @available(iOS 6.0, *)
    @discardableResult public func onImage(_ value: UIImage?) -> Self {
        self.view.onImage = value
        return self
    }
    
    @available(iOS 6.0, *)
    @discardableResult public func offImage(_ value: UIImage?) -> Self {
        self.view.offImage = value
        return self
    }
    
    @available(iOS 14.0, *)
    @discardableResult public func title(_ value: String?) -> Self {
        self.view.title = value
        return self
    }
    
    @available(iOS 14.0, *)
    @discardableResult public func preferredStyle(_ value: UISwitch.Style) -> Self {
        self.view.preferredStyle = value
        return self
    }
    
    @discardableResult public func isOn(_ value: Bool) -> Self {
        self.view.isOn = value
        return self
    }
    
    @discardableResult public func setOn(_ on: Bool, animated: Bool) -> Self {
        self.view.setOn(on, animated: animated)
        return self
    }
}
