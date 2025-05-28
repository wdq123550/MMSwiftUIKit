////
////  UITableViewCellExtension.swift
////  MMSwiftUIKit
////
////  Created by 小君夜麻吕 on 2025/5/15.
////
//
//import Foundation
//import UIKit
//
//public extension UITableViewCell {
//    
//    @discardableResult func automaticallyUpdatesContentConfiguration(_ value: Bool) -> Self {
//        self.automaticallyUpdatesContentConfiguration = value
//        return self
//    }
//    
//    @discardableResult func automaticallyUpdatesBackgroundConfiguration(_ value: Bool) -> Self {
//        self.automaticallyUpdatesBackgroundConfiguration = value
//        return self
//    }
//    
//    @discardableResult func backgroundView(_ value: UIView?) -> Self {
//        self.backgroundView = value
//        return self
//    }
//    
//    @discardableResult func selectedBackgroundView(_ value: UIView?) -> Self {
//        self.selectedBackgroundView = value
//        return self
//    }
//    
//    @discardableResult func multipleSelectionBackgroundView(_ value: UIView?) -> Self {
//        self.multipleSelectionBackgroundView = value
//        return self
//    }
//    
//    @discardableResult func selectionStyle(_ value: UITableViewCell.SelectionStyle) -> Self {
//        self.selectionStyle = value
//        return self
//    }
//    
//    @discardableResult func isSelected(_ value: Bool) -> Self {
//        self.isSelected = value
//        return self
//    }
//    
//    @discardableResult func isHighlighted(_ value: Bool) -> Self {
//        self.isHighlighted = value
//        return self
//    }
//    
//    @discardableResult func showsReorderControl(_ value: Bool) -> Self {
//        self.showsReorderControl = value
//        return self
//    }
//    
//    @discardableResult func shouldIndentWhileEditing(_ value: Bool) -> Self {
//        self.shouldIndentWhileEditing = value
//        return self
//    }
//    
//    @discardableResult func accessoryType(_ value: UITableViewCell.AccessoryType) -> Self {
//        self.accessoryType = value
//        return self
//    }
//    
//    @discardableResult func accessoryView(_ value: UIView?) -> Self {
//        self.accessoryView = value
//        return self
//    }
//    
//    @discardableResult func editingAccessoryType(_ value: UITableViewCell.AccessoryType) -> Self {
//        self.editingAccessoryType = value
//        return self
//    }
//    
//    @discardableResult func editingAccessoryView(_ value: UIView?) -> Self {
//        self.editingAccessoryView = value
//        return self
//    }
//    
//    @discardableResult func indentationLevel(_ value: Int) -> Self {
//        self.indentationLevel = value
//        return self
//    }
//    
//    @discardableResult func indentationWidth(_ value: CGFloat) -> Self {
//        self.indentationWidth = value
//        return self
//    }
//    
//    @discardableResult func separatorInset(_ value: UIEdgeInsets) -> Self {
//        self.separatorInset = value
//        return self
//    }
//    
//    @discardableResult func isEditing(_ value: Bool) -> Self {
//        self.isEditing = value
//        return self
//    }
//    
//    @discardableResult func focusStyle(_ value: UITableViewCell.FocusStyle) -> Self {
//        self.focusStyle = value
//        return self
//    }
//    
//    @discardableResult func userInteractionEnabledWhileDragging(_ value: Bool) -> Self {
//        self.userInteractionEnabledWhileDragging = value
//        return self
//    }
//}
