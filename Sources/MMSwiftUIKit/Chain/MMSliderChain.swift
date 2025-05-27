//
//  MMSliderChain.swift
//  MMSwiftUIKit
//
//  Created by 小君夜麻吕 on 2025/5/27.
//

import UIKit

public class MMSliderChain<T>: MMControlChain<T> where T: UISlider {
    
    @discardableResult public func value(_ value: Float) -> Self {
        self.view.value = value
        return self
    }
    
    @discardableResult public func minimumValue(_ value: Float) -> Self {
        self.view.minimumValue = value
        return self
    }
    
    @discardableResult public func maximumValue(_ value: Float) -> Self {
        self.view.maximumValue = value
        return self
    }
    
    @discardableResult public func minimumValueImage(_ value: UIImage?) -> Self {
        self.view.minimumValueImage = value
        return self
    }
    
    @discardableResult public func maximumValueImage(_ value: UIImage?) -> Self {
        self.view.maximumValueImage = value
        return self
    }
    
    @discardableResult public func isContinuous(_ value: Bool) -> Self {
        self.view.isContinuous = value
        return self
    }
    
    @available(iOS 5.0, *)
    @discardableResult public func minimumTrackTintColor(_ value: UIColor?) -> Self {
        self.view.minimumTrackTintColor = value
        return self
    }
    
    @available(iOS 5.0, *)
    @discardableResult public func maximumTrackTintColor(_ value: UIColor?) -> Self {
        self.view.maximumTrackTintColor = value
        return self
    }
    
    @available(iOS 5.0, *)
    @discardableResult public func thumbTintColor(_ value: UIColor?) -> Self {
        self.view.thumbTintColor = value
        return self
    }
    
    @discardableResult public func setValue(_ value: Float, animated: Bool) -> Self {
        self.view.setValue(value, animated: animated)
        return self
    }
    
    @discardableResult public func setThumbImage(_ image: UIImage?, for state: UIControl.State) -> Self {
        self.view.setThumbImage(image, for: state)
        return self
    }
    
    @discardableResult public func setMinimumTrackImage(_ image: UIImage?, for state: UIControl.State) -> Self {
        self.view.setMinimumTrackImage(image, for: state)
        return self
    }
    
    @discardableResult public func setMaximumTrackImage(_ image: UIImage?, for state: UIControl.State) -> Self {
        self.view.setMaximumTrackImage(image, for: state)
        return self
    }
}
