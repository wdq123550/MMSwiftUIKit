//
//  File.swift
//  MMSwiftUIKit
//
//  Created by 小君夜麻吕 on 2025/5/13.
//

import Foundation
import UIKit

public extension UIDatePicker {
    
    @discardableResult func datePickerMode(_ value: UIDatePicker.Mode) -> Self {
        self.datePickerMode = value
        return self
    }
    
    @discardableResult func locale(_ value: Locale?) -> Self {
        self.locale = value
        return self
    }
    
    @discardableResult func calendar(_ value: Calendar!) -> Self {
        self.calendar = value
        return self
    }
    
    @discardableResult func timeZone(_ value: TimeZone?) -> Self {
        self.timeZone = value
        return self
    }
    
    @discardableResult func date(_ value: Date) -> Self {
        self.date = value
        return self
    }
    
    @discardableResult func minimumDate(_ value: Date) -> Self {
        self.minimumDate = value
        return self
    }
    
    @discardableResult func maximumDate(_ value: Date) -> Self {
        self.maximumDate = value
        return self
    }
    
    @discardableResult func countDownDuration(_ value: TimeInterval) -> Self {
        self.countDownDuration = value
        return self
    }
    
    @discardableResult func minuteInterval(_ value: Int) -> Self {
        self.minuteInterval = value
        return self
    }
    
    @discardableResult func preferredDatePickerStyle(_ value: UIDatePickerStyle) -> Self {
        self.preferredDatePickerStyle = value
        return self
    }
    
    @discardableResult func roundsToMinuteInterval(_ value: Bool) -> Self {
        self.roundsToMinuteInterval = value
        return self
    }
}
