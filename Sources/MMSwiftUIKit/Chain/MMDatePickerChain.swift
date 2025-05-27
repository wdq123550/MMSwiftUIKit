//
//  MMDatePickerChain.swift
//  MMSwiftUIKit
//
//  Created by 小君夜麻吕 on 2025/5/27.
//

import UIKit

public class MMDatePickerChain<T>: MMControlChain<T> where T: UIDatePicker {
    
    @discardableResult public func datePickerMode(_ value: UIDatePicker.Mode) -> Self {
        self.view.datePickerMode = value
        return self
    }
    
    @discardableResult public func locale(_ value: Locale?) -> Self {
        self.view.locale = value
        return self
    }
    
    @discardableResult public func calendar(_ value: Calendar!) -> Self {
        self.view.calendar = value
        return self
    }
    
    @discardableResult public func timeZone(_ value: TimeZone?) -> Self {
        self.view.timeZone = value
        return self
    }
    
    @discardableResult public func date(_ value: Date) -> Self {
        self.view.date = value
        return self
    }
    
    @discardableResult public func minimumDate(_ value: Date?) -> Self {
        self.view.minimumDate = value
        return self
    }
    
    @discardableResult public func maximumDate(_ value: Date?) -> Self {
        self.view.maximumDate = value
        return self
    }
    
    @discardableResult public func countDownDuration(_ value: TimeInterval) -> Self {
        self.view.countDownDuration = value
        return self
    }
    
    @discardableResult public func minuteInterval(_ value: Int) -> Self {
        self.view.minuteInterval = value
        return self
    }
    
    @discardableResult public func setDate(_ date: Date, animated: Bool) -> Self {
        self.view.setDate(date, animated: animated)
        return self
    }
    
    @available(iOS 13.4, *)
    @discardableResult public func preferredDatePickerStyle(_ value: UIDatePickerStyle) -> Self {
        self.view.preferredDatePickerStyle = value
        return self
    }
    
    @available(iOS 15.0, *)
    @discardableResult public func roundsToMinuteInterval(_ value: Bool) -> Self {
        self.view.roundsToMinuteInterval = value
        return self
    }
}
