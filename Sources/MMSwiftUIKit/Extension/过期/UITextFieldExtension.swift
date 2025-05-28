////
////  UITextFieldExtension.swift
////  MMSwiftUIKit
////
////  Created by 小君夜麻吕 on 2025/5/13.
////
//
//import Foundation
//import UIKit
//
//public extension UITextField {
//    
//    @discardableResult func text(_ value: String) -> Self {
//        self.text = value
//        return self
//    }
//    
//    @discardableResult func attributedText(_ value: NSAttributedString) -> Self {
//        self.attributedText = value
//        return self
//    }
//    
//    @discardableResult func textColor(_ value: UIColor) -> Self {
//        self.textColor = value
//        return self
//    }
//    
//    @discardableResult func font(_ value: UIFont) -> Self {
//        self.font = value
//        return self
//    }
//    
//    @discardableResult func textAlignment(_ value: NSTextAlignment) -> Self {
//        self.textAlignment = value
//        return self
//    }
//    
//    @discardableResult func borderStyle(_ value: UITextField.BorderStyle) -> Self {
//        self.borderStyle = value
//        return self
//    }
//    
//    @discardableResult func defaultTextAttributes(_ value: [NSAttributedString.Key : Any]) -> Self {
//        self.defaultTextAttributes = value
//        return self
//    }
//    
//    @discardableResult func placeholder(_ value: String) -> Self {
//        self.placeholder = value
//        return self
//    }
//    
//    @discardableResult func attributedPlaceholder(_ value: NSAttributedString) -> Self {
//        self.attributedPlaceholder = value
//        return self
//    }
//    
//    @discardableResult func clearsOnBeginEditing(_ value: Bool) -> Self {
//        self.clearsOnBeginEditing = value
//        return self
//    }
//    
//    @discardableResult func adjustsFontSizeToFitWidth(_ value: Bool) -> Self {
//        self.adjustsFontSizeToFitWidth = value
//        return self
//    }
//    
//    @discardableResult func minimumFontSize(_ value: CGFloat) -> Self {
//        self.minimumFontSize = value
//        return self
//    }
//    
//    @discardableResult func delegate(_ value: (any UITextFieldDelegate)?) -> Self {
//        self.delegate = value
//        return self
//    }
//    
//    @discardableResult func background(_ value: UIImage?) -> Self {
//        self.background = value
//        return self
//    }
//    
//    @discardableResult func disabledBackground(_ value: UIImage?) -> Self {
//        self.disabledBackground = value
//        return self
//    }
//    
//    @discardableResult func allowsEditingTextAttributes(_ value: Bool) -> Self {
//        self.allowsEditingTextAttributes = value
//        return self
//    }
//    
//    @discardableResult func typingAttributes(_ value: [NSAttributedString.Key : Any]?) -> Self {
//        self.typingAttributes = value
//        return self
//    }
//    
//    @discardableResult func clearButtonMode(_ value: UITextField.ViewMode) -> Self {
//        self.clearButtonMode = value
//        return self
//    }
//    
//    @discardableResult func leftView(_ value: UIView) -> Self {
//        self.leftView = value
//        return self
//    }
//    
//    @discardableResult func leftViewMode(_ value: UITextField.ViewMode) -> Self {
//        self.leftViewMode = value
//        return self
//    }
//    
//    @discardableResult func rightView(_ value: UIView) -> Self {
//        self.rightView = value
//        return self
//    }
//    
//    @discardableResult func rightViewMode(_ value: UITextField.ViewMode) -> Self {
//        self.rightViewMode = value
//        return self
//    }
//    
//    @discardableResult func inputView(_ value: UIView) -> Self {
//        self.inputView = value
//        return self
//    }
//    
//    @discardableResult func inputAccessoryView(_ value: UIView) -> Self {
//        self.inputAccessoryView = value
//        return self
//    }
//    
//    @discardableResult func clearsOnInsertion(_ value: Bool) -> Self {
//        self.clearsOnInsertion = value
//        return self
//    }
//    
//    @discardableResult func interactionState(_ value: Any) -> Self {
//        self.interactionState = value
//        return self
//    }
//    
//    @discardableResult func keyboardType(_ value: UIKeyboardType) -> Self {
//        self.keyboardType = value
//        return self
//    }
//    
//    @discardableResult func returnKeyType(_ value: UIReturnKeyType) -> Self {
//        self.returnKeyType = value
//        return self
//    }
//    
//    @discardableResult func isSecureTextEntry(_ value: Bool) -> Self {
//        self.isSecureTextEntry = value
//        return self
//    }
//}
