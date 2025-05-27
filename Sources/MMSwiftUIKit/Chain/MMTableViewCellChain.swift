//
//  MMTableViewCellChain.swift
//  MMSwiftUIKit
//
//  Created by 小君夜麻吕 on 2025/5/27.
//

import UIKit

public class MMTableViewCellChain<T>: MMViewChain<T> where T: UITableViewCell {
    
    @available(iOS 14.0, *)
    @discardableResult public func setNeedsUpdateConfiguration() -> Self {
        self.view.setNeedsUpdateConfiguration()
        return self
    }
    
    @available(iOS 14.0, *)
    @discardableResult public func automaticallyUpdatesContentConfiguration(_ value: Bool) -> Self {
        self.view.automaticallyUpdatesContentConfiguration = value
        return self
    }
    
    @discardableResult public func backgroundView(_ value: UIView?) -> Self {
        self.view.backgroundView = value
        return self
    }
    
    @discardableResult public func selectedBackgroundView(_ value: UIView?) -> Self {
        self.view.selectedBackgroundView = value
        return self
    }
    
    @available(iOS 5.0, *)
    @discardableResult public func multipleSelectionBackgroundView(_ value: UIView?) -> Self {
        self.view.multipleSelectionBackgroundView = value
        return self
    }
    
    @discardableResult public func prepareForReuse() -> Self {
        self.view.prepareForReuse()
        return self
    }
    
    @discardableResult public func selectionStyle(_ value: UITableViewCell.SelectionStyle) -> Self {
        self.view.selectionStyle = value
        return self
    }
    
    @discardableResult public func isSelected(_ value: Bool) -> Self {
        self.view.isSelected = value
        return self
    }
    
    @discardableResult public func isHighlighted(_ value: Bool) -> Self {
        self.view.isHighlighted = value
        return self
    }
    
    @discardableResult public func setSelected(_ selected: Bool, animated: Bool) -> Self {
        self.view.setSelected(selected, animated: animated)
        return self
    }
    
    @discardableResult public func setHighlighted(_ highlighted: Bool, animated: Bool) -> Self {
        self.view.setHighlighted(highlighted, animated: animated)
        return self
    }
    
    @discardableResult public func showsReorderControl(_ value: Bool) -> Self {
        self.view.showsReorderControl = value
        return self
    }
    
    @discardableResult public func shouldIndentWhileEditing(_ value: Bool) -> Self {
        self.view.shouldIndentWhileEditing = value
        return self
    }
    
    @discardableResult public func accessoryType(_ value: UITableViewCell.AccessoryType) -> Self {
        self.view.accessoryType = value
        return self
    }
    
    @discardableResult public func accessoryView(_ value: UIView?) -> Self {
        self.view.accessoryView = value
        return self
    }
    
    @discardableResult public func editingAccessoryType(_ value: UITableViewCell.AccessoryType) -> Self {
        self.view.editingAccessoryType = value
        return self
    }
    
    @discardableResult public func editingAccessoryView(_ value: UIView?) -> Self {
        self.view.editingAccessoryView = value
        return self
    }
    
    @discardableResult public func indentationLevel(_ value: Int) -> Self {
        self.view.indentationLevel = value
        return self
    }
    
    @discardableResult public func indentationWidth(_ value: CGFloat) -> Self {
        self.view.indentationWidth = value
        return self
    }
    
    @available(iOS 7.0, *)
    @discardableResult public func separatorInset(_ value: UIEdgeInsets) -> Self {
        self.view.separatorInset = value
        return self
    }
    
    @discardableResult public func isEditing(_ value: Bool) -> Self {
        self.view.isEditing = value
        return self
    }
    
    @discardableResult public func setEditing(_ editing: Bool, animated: Bool) -> Self {
        self.view.setEditing(editing, animated: animated)
        return self
    }
    
    @available(iOS 9.0, *)
    @discardableResult public func focusStyle(_ value: UITableViewCell.FocusStyle) -> Self {
        self.view.focusStyle = value
        return self
    }
    
    @available(iOS 3.0, *)
    @discardableResult public func willTransition(to state: UITableViewCell.StateMask) -> Self {
        self.view.willTransition(to: state)
        return self
    }
    
    @available(iOS 3.0, *)
    @discardableResult public func didTransition(to state: UITableViewCell.StateMask) -> Self {
        self.view.didTransition(to: state)
        return self
    }
    
    @available(iOS 11.0, *)
    @discardableResult public func dragStateDidChange(_ dragState: UITableViewCell.DragState) -> Self {
        self.view.dragStateDidChange(dragState)
        return self
    }
    
    @available(iOS 11.0, *)
    @discardableResult public func userInteractionEnabledWhileDragging(_ value: Bool) -> Self {
        self.view.userInteractionEnabledWhileDragging = value
        return self
    }
    
    @available(iOS 14.0, *)
    @discardableResult public func contentConfiguration(_ value: (any UIContentConfiguration)?) -> Self {
        self.view.contentConfiguration = value
        return self
    }
    
    @available(iOS 14.0, *)
    @discardableResult public func automaticallyUpdatesBackgroundConfiguration(_ value: Bool) -> Self {
        self.view.automaticallyUpdatesBackgroundConfiguration = value
        return self
    }
    
    @available(iOS 14.0, *)
    @discardableResult public func backgroundConfiguration(_ value: UIBackgroundConfiguration?) -> Self {
        self.view.backgroundConfiguration = value
        return self
    }
    
    @available(iOS 15.0, *)
    @discardableResult public func configurationUpdateHandler(_ value: UITableViewCell.ConfigurationUpdateHandler?) -> Self {
        self.view.configurationUpdateHandler = value
        return self
    }
}
