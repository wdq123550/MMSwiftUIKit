////
////  File.swift
////  MMSwiftUIKit
////
////  Created by 小君夜麻吕 on 2025/5/13.
////
//
//import Foundation
//import UIKit
//
//public extension UITextView {
//    
//    @discardableResult func text(_ value: String) -> Self {
//        self.text = value
//        return self
//    }
//    
//    @discardableResult func delegate(_ value: (any UITextViewDelegate)?) -> Self {
//        self.delegate = value
//        return self
//    }
//    
//    @discardableResult func font(_ value: UIFont) -> Self {
//        self.font = value
//        return self
//    }
//    
//    @discardableResult func textColor(_ value: UIColor) -> Self {
//        self.textColor = value
//        return self
//    }
//    
//    @discardableResult func textAlignment(_ value: NSTextAlignment) -> Self {
//        self.textAlignment = value
//        return self
//    }
//    
//    @discardableResult func selectedRange(_ value: NSRange) -> Self {
//        self.selectedRange = value
//        return self
//    }
//    
//    @discardableResult func isEditable(_ value: Bool) -> Self {
//        self.isEditable = value
//        return self
//    }
//    
//    @discardableResult func isSelectable(_ value: Bool) -> Self {
//        self.isSelectable = value
//        return self
//    }
//    
//    @discardableResult func dataDetectorTypes(_ value: UIDataDetectorTypes) -> Self {
//        self.dataDetectorTypes = value
//        return self
//    }
//    
//    @discardableResult func allowsEditingTextAttributes(_ value: Bool) -> Self {
//        self.allowsEditingTextAttributes = value
//        return self
//    }
//    
//    @discardableResult func attributedText(_ value: NSAttributedString) -> Self {
//        self.attributedText = value
//        return self
//    }
//    
//    @discardableResult func typingAttributes(_ value: [NSAttributedString.Key : Any]) -> Self {
//        self.typingAttributes = value
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
//    @discardableResult func textContainerInset(_ value: UIEdgeInsets) -> Self {
//        self.textContainerInset = value
//        return self
//    }
//    
//    @discardableResult func usesStandardTextScaling(_ value: Bool) -> Self {
//        self.usesStandardTextScaling = value
//        return self
//    }
//    
//    @available(iOS 15.0, *)
//    @discardableResult func interactionState(_ value: Any) -> Self {
//        self.interactionState = value
//        return self
//    }
//    
//    @available(iOS 16.0, *)
//    @discardableResult func isFindInteractionEnabled(_ value: Bool) -> Self {
//        self.isFindInteractionEnabled = value
//        return self
//    }
//    
//    @available(iOS 17.0, *)
//    @discardableResult func borderStyle(_ value: UITextView.BorderStyle) -> Self {
//        self.borderStyle = value
//        return self
//    }
//    
//    @available(iOS 18.0, *)
//    @discardableResult func textHighlightAttributes(_ value: [NSAttributedString.Key : Any]!) -> Self {
//        self.textHighlightAttributes = value
//        return self
//    }
//    
//    @available(iOS 18.0, *)
//    @discardableResult func writingToolsBehavior(_ value: UIWritingToolsBehavior) -> Self {
//        self.writingToolsBehavior = value
//        return self
//    }
//    
//    @available(iOS 18.0, *)
//    @discardableResult func allowedWritingToolsResultOptions(_ value: UIWritingToolsResultOptions) -> Self {
//        self.allowedWritingToolsResultOptions = value
//        return self
//    }
//    
//    @available(iOS 18.0, *)
//    @discardableResult func textFormattingConfiguration(_ value: UITextFormattingViewController.Configuration?) -> Self {
//        self.textFormattingConfiguration = value
//        return self
//    }
//}
