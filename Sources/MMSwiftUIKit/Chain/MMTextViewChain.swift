//
//  MMTextViewChain.swift
//  MMSwiftUIKit
//
//  Created by 小君夜麻吕 on 2025/5/27.
//

import UIKit
import RSKGrowingTextView

public class MMTextViewChain<T>: MMScrollViewChain<T> where T: RSKGrowingTextView {
    
    @discardableResult public func text(_ value: String) -> Self {
        self.view.text = value
        return self
    }
    
    @discardableResult public func font(_ value: UIFont?) -> Self {
        self.view.font = value
        return self
    }
    
    @discardableResult public func textColor(_ value: UIColor?) -> Self {
        self.view.textColor = value
        return self
    }
    
    @discardableResult public func textAlignment(_ value: NSTextAlignment) -> Self {
        self.view.textAlignment = value
        return self
    }
    
    @discardableResult public func selectedRange(_ value: NSRange) -> Self {
        self.view.selectedRange = value
        return self
    }
    
    @discardableResult public func isEditable(_ value: Bool) -> Self {
        self.view.isEditable = value
        return self
    }
    
    @available(iOS 7.0, *)
    @discardableResult public func isSelectable(_ value: Bool) -> Self {
        self.view.isSelectable = value
        return self
    }
    
    @available(iOS 3.0, *)
    @discardableResult public func dataDetectorTypes(_ value: UIDataDetectorTypes) -> Self {
        self.view.dataDetectorTypes = value
        return self
    }
    
    @available(iOS 6.0, *)
    @discardableResult public func allowsEditingTextAttributes(_ value: Bool) -> Self {
        self.view.allowsEditingTextAttributes = value
        return self
    }
    
    @available(iOS 6.0, *)
    @discardableResult public func attributedText(_ value: NSAttributedString) -> Self {
        self.view.attributedText = value
        return self
    }
    
    @available(iOS 6.0, *)
    @discardableResult public func typingAttributes(_ value: [NSAttributedString.Key : Any]) -> Self {
        self.view.typingAttributes = value
        return self
    }
    
    @discardableResult public func scrollRangeToVisible(_ range: NSRange) -> Self {
        self.view.scrollRangeToVisible(range)
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
    
    @available(iOS 7.0, *)
    @discardableResult public func textContainerInset(_ value: UIEdgeInsets) -> Self {
        self.view.textContainerInset = value
        return self
    }
    
    @available(iOS 7.0, *)
    @discardableResult public func linkTextAttributes(_ value: [NSAttributedString.Key : Any]!) -> Self {
        self.view.linkTextAttributes = value
        return self
    }
    
    @available(iOS 13.0, *)
    @discardableResult public func usesStandardTextScaling(_ value: Bool) -> Self {
        self.view.usesStandardTextScaling = value
        return self
    }
    
    @available(iOS 16.0, *)
    @discardableResult public func isFindInteractionEnabled(_ value: Bool) -> Self {
        self.view.isFindInteractionEnabled = value
        return self
    }
    
    @available(iOS 17.0, *)
    @discardableResult public func borderStyle(_ value: UITextView.BorderStyle) -> Self {
        self.view.borderStyle = value
        return self
    }
    
    @available(iOS 18.0, *)
    @discardableResult public func textHighlightAttributes(_ value: [NSAttributedString.Key : Any]!) -> Self {
        self.view.textHighlightAttributes = value
        return self
    }
    
    @available(iOS 18.0, *)
    @discardableResult public func drawTextHighlightBackground(for textRange: NSTextRange, origin: CGPoint) -> Self {
        self.view.drawTextHighlightBackground(for: textRange, origin: origin)
        return self
    }
    
    @available(iOS 18.0, *)
    @discardableResult public func writingToolsBehavior(_ value: UIWritingToolsBehavior) -> Self {
        self.view.writingToolsBehavior = value
        return self
    }
    
    @available(iOS 18.0, *)
    @discardableResult public func allowedWritingToolsResultOptions(_ value: UIWritingToolsResultOptions) -> Self {
        self.view.allowedWritingToolsResultOptions = value
        return self
    }
    
    @available(iOS 18.0, *)
    @discardableResult public func textFormattingConfiguration(_ value: UITextFormattingViewController.Configuration?) -> Self {
        self.view.textFormattingConfiguration = value
        return self
    }
    
    @available(iOS 15.0, *)
    @discardableResult public func interactionState(_ value: Any) -> Self {
        self.view.interactionState = value
        return self
    }
    
    // MARK: - RSKPlaceholderTextView Properties
    
    @discardableResult public func placeholder(_ value: NSString?) -> Self {
        self.view.placeholder = value
        return self
    }
    
    @discardableResult public func placeholderColor(_ value: UIColor) -> Self {
        self.view.placeholderColor = value
        return self
    }
    
    @discardableResult public func placeholderLineBreakMode(_ value: NSLineBreakMode) -> Self {
        self.view.placeholderLineBreakMode = value
        return self
    }
    
    // MARK: - RSKGrowingTextView Properties
    
    @discardableResult public func animateHeightChange(_ value: Bool) -> Self {
        self.view.animateHeightChange = value
        return self
    }
    
    @discardableResult public func growingTextViewDelegate(_ value: RSKGrowingTextViewDelegate?) -> Self {
        self.view.growingTextViewDelegate = value
        return self
    }
    
    @discardableResult public func heightChangeAnimationDuration(_ value: Double) -> Self {
        self.view.heightChangeAnimationDuration = value
        return self
    }
    
    @discardableResult public func heightChangeUserActionsBlock(_ value: HeightChangeUserActionsBlockType?) -> Self {
        self.view.heightChangeUserActionsBlock = value
        return self
    }
    
    @discardableResult public func maximumNumberOfLines(_ value: Int) -> Self {
        self.view.maximumNumberOfLines = value
        return self
    }
    
    @discardableResult public func minimumNumberOfLines(_ value: Int) -> Self {
        self.view.minimumNumberOfLines = value
        return self
    }
}
