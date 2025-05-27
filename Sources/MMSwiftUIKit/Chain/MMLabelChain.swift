//
//  MMLabelChain.swift
//  MMSwiftUIKit
//
//  Created by 小君夜麻吕 on 2025/5/27.
//

import UIKit

public class MMLabelChain<T>: MMViewChain<T> where T: UILabel {
    
    @discardableResult public func text(_ value: String?) -> Self {
        self.view.text = value
        return self
    }
    
    @discardableResult public func font(_ value: UIFont!) -> Self {
        self.view.font = value
        return self
    }
    
    @discardableResult public func textColor(_ value: UIColor!) -> Self {
        self.view.textColor = value
        return self
    }
    
    @available(iOS 17.0, *)
    @discardableResult public func preferredVibrancy(_ value: UILabelVibrancy) -> Self {
        self.view.preferredVibrancy = value
        return self
    }
    
    @discardableResult public func shadowColor(_ value: UIColor?) -> Self {
        self.view.shadowColor = value
        return self
    }
    
    @discardableResult public func shadowOffset(_ value: CGSize) -> Self {
        self.view.shadowOffset = value
        return self
    }
    
    @discardableResult public func textAlignment(_ value: NSTextAlignment) -> Self {
        self.view.textAlignment = value
        return self
    }
    
    @discardableResult public func lineBreakMode(_ value: NSLineBreakMode) -> Self {
        self.view.lineBreakMode = value
        return self
    }
    
    @discardableResult public func attributedText(_ value: NSAttributedString?) -> Self {
        self.view.attributedText = value
        return self
    }
    
    @discardableResult public func highlightedTextColor(_ value: UIColor?) -> Self {
        self.view.highlightedTextColor = value
        return self
    }
    
    @discardableResult public func isHighlighted(_ value: Bool) -> Self {
        self.view.isHighlighted = value
        return self
    }
    
    @discardableResult public func isEnabled(_ value: Bool) -> Self {
        self.view.isEnabled = value
        return self
    }
    
    @discardableResult public func numberOfLines(_ value: Int) -> Self {
        self.view.numberOfLines = value
        return self
    }
    
    @discardableResult public func adjustsFontSizeToFitWidth(_ value: Bool) -> Self {
        self.view.adjustsFontSizeToFitWidth = value
        return self
    }
    
    @discardableResult public func baselineAdjustment(_ value: UIBaselineAdjustment) -> Self {
        self.view.baselineAdjustment = value
        return self
    }
    
    @discardableResult public func minimumScaleFactor(_ value: CGFloat) -> Self {
        self.view.minimumScaleFactor = value
        return self
    }
    
    @discardableResult public func allowsDefaultTighteningForTruncation(_ value: Bool) -> Self {
        self.view.allowsDefaultTighteningForTruncation = value
        return self
    }
    
    @discardableResult public func lineBreakStrategy(_ value: NSParagraphStyle.LineBreakStrategy) -> Self {
        self.view.lineBreakStrategy = value
        return self
    }
    
    @discardableResult public func drawText(in rect: CGRect) -> Self {
        self.view.drawText(in: rect)
        return self
    }
    
    @discardableResult public func preferredMaxLayoutWidth(_ value: CGFloat) -> Self {
        self.view.preferredMaxLayoutWidth = value
        return self
    }
    
    @discardableResult public func showsExpansionTextWhenTruncated(_ value: Bool) -> Self {
        self.view.showsExpansionTextWhenTruncated = value
        return self
    }
}
