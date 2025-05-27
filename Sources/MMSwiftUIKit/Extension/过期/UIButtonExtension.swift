//
//  UIButtonExtension.swift
//  MMSwiftUIKit
//
//  Created by 小君夜麻吕 on 2025/5/13.
//

import Foundation
import UIKit

public extension UIButton {
    
    @discardableResult func contentVerticalAlignment(_ value: UIControl.ContentVerticalAlignment) -> Self {
        self.contentVerticalAlignment = value
        return self
    }
    
    @discardableResult func contentHorizontalAlignment(_ value: UIControl.ContentHorizontalAlignment) -> Self {
        self.contentHorizontalAlignment = value
        return self
    }
    
    @discardableResult func isEnabled(_ value: Bool) -> Self {
        self.isEnabled = value
        return self
    }
    
    @discardableResult func isSelected(_ value: Bool) -> Self {
        self.isSelected = value
        return self
    }
    
    @discardableResult func isHighlighted(_ value: Bool) -> Self {
        self.isHighlighted = value
        return self
    }
    
    @discardableResult func isContextMenuInteractionEnabled(_ value: Bool) -> Self {
        self.isContextMenuInteractionEnabled = value
        return self
    }
    
    @discardableResult func showsMenuAsPrimaryAction(_ value: Bool) -> Self {
        self.showsMenuAsPrimaryAction = value
        return self
    }
    
    @discardableResult func toolTip(_ value: String?) -> Self {
        self.toolTip = value
        return self
    }
    
    @available(iOS 17.0, *)
    @discardableResult func isSymbolAnimationEnabled(_ value: Bool) -> Self {
        self.isSymbolAnimationEnabled = value
        return self
    }
}
