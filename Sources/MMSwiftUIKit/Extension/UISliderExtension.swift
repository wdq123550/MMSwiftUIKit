//
//  File.swift
//  MMSwiftUIKit
//
//  Created by 小君夜麻吕 on 2025/5/13.
//

import Foundation
import UIKit

public extension UISlider {
    
    @discardableResult func value(_ value: Float) -> Self {
        self.value = value
        return self
    }
    
    @discardableResult func minimumValue(_ value: Float) -> Self {
        self.minimumValue = value
        return self
    }
    
    @discardableResult func maximumValue(_ value: Float) -> Self {
        self.maximumValue = value
        return self
    }
    
    @discardableResult func minimumValueImage(_ value: UIImage?) -> Self {
        self.minimumValueImage = value
        return self
    }
    
    @discardableResult func maximumValueImage(_ value: UIImage?) -> Self {
        self.maximumValueImage = value
        return self
    }
    
    @discardableResult func isContinuous(_ value: Bool) -> Self {
        self.isContinuous = value
        return self
    }
    
    @discardableResult func minimumTrackTintColor(_ value: UIColor?) -> Self {
        self.minimumTrackTintColor = value
        return self
    }
    
    @discardableResult func maximumTrackTintColor(_ value: UIColor?) -> Self {
        self.maximumTrackTintColor = value
        return self
    }
    
    @discardableResult func thumbTintColor(_ value: UIColor?) -> Self {
        self.thumbTintColor = value
        return self
    }
    
}
