//
//  MMPickerViewChain.swift
//  MMSwiftUIKit
//
//  Created by 小君夜麻吕 on 2025/5/27.
//

import UIKit

public class MMPickerViewChain<T>: MMViewChain<T> where T: UIPickerView {
    
    @discardableResult public func dataSource(_ value: (any UIPickerViewDataSource)?) -> Self {
        self.view.dataSource = value
        return self
    }
    
    @discardableResult public func delegate(_ value: (any UIPickerViewDelegate)?) -> Self {
        self.view.delegate = value
        return self
    }
    
    @available(iOS, introduced: 2.0, deprecated: 13.0, message: "This property has no effect on iOS 7 and later.")
    @discardableResult public func showsSelectionIndicator(_ value: Bool) -> Self {
        self.view.showsSelectionIndicator = value
        return self
    }
    
    @discardableResult public func reloadAllComponents() -> Self {
        self.view.reloadAllComponents()
        return self
    }
    
    @discardableResult public func reloadComponent(_ component: Int) -> Self {
        self.view.reloadComponent(component)
        return self
    }
    
    @discardableResult public func selectRow(_ row: Int, inComponent component: Int, animated: Bool) -> Self {
        self.view.selectRow(row, inComponent: component, animated: animated)
        return self
    }
}
