//
//  MMTextFieldChain.swift
//  MMSwiftUIKit
//
//  Created by 小君夜麻吕 on 2025/5/27.
//

import UIKit

public class MMTextFieldChain<T>: MMControlChain<T> where T: UITextField {
    
    @discardableResult public func text(_ value: String?) -> Self {
        self.view.text = value
        return self
    }
    
    @available(iOS 6.0, *)
    @discardableResult public func attributedText(_ value: NSAttributedString?) -> Self {
        self.view.attributedText = value
        return self
    }
    
    @discardableResult public func textColor(_ value: UIColor?) -> Self {
        self.view.textColor = value
        return self
    }
    
    @discardableResult public func font(_ value: UIFont?) -> Self {
        self.view.font = value
        return self
    }
    
    @discardableResult public func textAlignment(_ value: NSTextAlignment) -> Self {
        self.view.textAlignment = value
        return self
    }
    
    @discardableResult public func borderStyle(_ value: UITextField.BorderStyle) -> Self {
        self.view.borderStyle = value
        return self
    }
    
    @available(iOS 7.0, *)
    @discardableResult public func defaultTextAttributes(_ value: [NSAttributedString.Key : Any]) -> Self {
        self.view.defaultTextAttributes = value
        return self
    }
    
    @discardableResult public func placeholder(_ value: String?) -> Self {
        self.view.placeholder = value
        return self
    }
    
    @available(iOS 6.0, *)
    @discardableResult public func attributedPlaceholder(_ value: NSAttributedString?) -> Self {
        self.view.attributedPlaceholder = value
        return self
    }
    
    @discardableResult public func clearsOnBeginEditing(_ value: Bool) -> Self {
        self.view.clearsOnBeginEditing = value
        return self
    }
    
    @discardableResult public func adjustsFontSizeToFitWidth(_ value: Bool) -> Self {
        self.view.adjustsFontSizeToFitWidth = value
        return self
    }
    
    @discardableResult public func minimumFontSize(_ value: CGFloat) -> Self {
        self.view.minimumFontSize = value
        return self
    }
    
    @discardableResult public func delegate(_ value: (any UITextFieldDelegate)?) -> Self {
        self.view.delegate = value
        return self
    }
    
    @discardableResult public func background(_ value: UIImage?) -> Self {
        self.view.background = value
        return self
    }
    
    @discardableResult public func disabledBackground(_ value: UIImage?) -> Self {
        self.view.disabledBackground = value
        return self
    }
    
    @available(iOS 6.0, *)
    @discardableResult public func allowsEditingTextAttributes(_ value: Bool) -> Self {
        self.view.allowsEditingTextAttributes = value
        return self
    }
    
    @available(iOS 6.0, *)
    @discardableResult public func typingAttributes(_ value: [NSAttributedString.Key : Any]?) -> Self {
        self.view.typingAttributes = value
        return self
    }
    
    @discardableResult public func clearButtonMode(_ value: UITextField.ViewMode) -> Self {
        self.view.clearButtonMode = value
        return self
    }
    
    @discardableResult public func leftView(_ value: UIView?) -> Self {
        self.view.leftView = value
        return self
    }
    
    @discardableResult public func leftViewMode(_ value: UITextField.ViewMode) -> Self {
        self.view.leftViewMode = value
        return self
    }
    
    @discardableResult public func rightView(_ value: UIView?) -> Self {
        self.view.rightView = value
        return self
    }
    
    @discardableResult public func rightViewMode(_ value: UITextField.ViewMode) -> Self {
        self.view.rightViewMode = value
        return self
    }
    
    @available(iOS, introduced: 2.0, deprecated: 15.0, message: "This method is no longer called.")
    @discardableResult public func drawText(in rect: CGRect) -> Self {
        self.view.drawText(in: rect)
        return self
    }
    
    @discardableResult public func drawPlaceholder(in rect: CGRect) -> Self {
        self.view.drawPlaceholder(in: rect)
        return self
    }
    
    @discardableResult public func inputView(_ value: UIView?) -> Self {
        self.view.inputView = value
        return self
    }
    
    @discardableResult public func inputAccessoryView(_ value: UIView?) -> Self {
        self.view.inputAccessoryView = value
        return self
    }
    
    @available(iOS 6.0, *)
    @discardableResult public func clearsOnInsertion(_ value: Bool) -> Self {
        self.view.clearsOnInsertion = value
        return self
    }
    
    @available(iOS 15.0, *)
    @discardableResult public func interactionState(_ value: Any) -> Self {
        self.view.interactionState = value
        return self
    }
}
