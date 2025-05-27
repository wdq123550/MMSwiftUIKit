//
//  MMControlChain.swift
//  MMSwiftUIKit
//
//  Created by 小君夜麻吕 on 2025/5/27.
//

import UIKit

public class MMControlChain<T>: MMViewChain<T> where T: UIControl {
    
    @discardableResult public func isEnabled(_ value: Bool) -> Self {
        self.view.isEnabled = value
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
    
    @discardableResult public func contentVerticalAlignment(_ value: UIControl.ContentVerticalAlignment) -> Self {
        self.view.contentVerticalAlignment = value
        return self
    }
    
    @discardableResult public func contentHorizontalAlignment(_ value: UIControl.ContentHorizontalAlignment) -> Self {
        self.view.contentHorizontalAlignment = value
        return self
    }
    
    @discardableResult public func endTracking(_ touch: UITouch?, with event: UIEvent?) -> Self {
        self.view.endTracking(touch, with: event)
        return self
    }
    
    @discardableResult public func cancelTracking(with event: UIEvent?) -> Self {
        self.view.cancelTracking(with: event)
        return self
    }
    
    @discardableResult public func addTarget(_ target: Any?, action: Selector, for controlEvents: UIControl.Event) -> Self {
        self.view.addTarget(target, action: action, for: controlEvents)
        return self
    }
    
    @discardableResult public func removeTarget(_ target: Any?, action: Selector?, for controlEvents: UIControl.Event) -> Self {
        self.view.removeTarget(target, action: action, for: controlEvents)
        return self
    }
    
    @available(iOS 14.0, *)
    @discardableResult public func addAction(_ action: UIAction, for controlEvents: UIControl.Event) -> Self {
        self.view.addAction(action, for: controlEvents)
        return self
    }
    
    @available(iOS 14.0, *)
    @discardableResult public func removeAction(_ action: UIAction, for controlEvents: UIControl.Event) -> Self {
        self.view.removeAction(action, for: controlEvents)
        return self
    }
    
    @available(iOS 14.0, *)
    @discardableResult public func removeAction(identifiedBy actionIdentifier: UIAction.Identifier, for controlEvents: UIControl.Event) -> Self {
        self.view.removeAction(identifiedBy: actionIdentifier, for: controlEvents)
        return self
    }
    
    @available(iOS 17.4, *)
    @discardableResult public func performPrimaryAction() -> Self {
        self.view.performPrimaryAction()
        return self
    }
    
    @discardableResult public func sendAction(_ action: Selector, to target: Any?, for event: UIEvent?) -> Self {
        self.view.sendAction(action, to: target, for: event)
        return self
    }
    
    @available(iOS 14.0, *)
    @discardableResult public func sendAction(_ action: UIAction) -> Self {
        self.view.sendAction(action)
        return self
    }
    
    @discardableResult public func sendActions(for controlEvents: UIControl.Event) -> Self {
        self.view.sendActions(for: controlEvents)
        return self
    }
    
    @available(iOS 14.0, *)
    @discardableResult public func isContextMenuInteractionEnabled(_ value: Bool) -> Self {
        self.view.isContextMenuInteractionEnabled = value
        return self
    }
    
    @available(iOS 14.0, *)
    @discardableResult public func showsMenuAsPrimaryAction(_ value: Bool) -> Self {
        self.view.showsMenuAsPrimaryAction = value
        return self
    }
    
    @available(iOS 15.0, *)
    @discardableResult public func toolTip(_ value: String?) -> Self {
        self.view.toolTip = value
        return self
    }
    
    @available(iOS 17.0, *)
    @discardableResult public func isSymbolAnimationEnabled(_ value: Bool) -> Self {
        self.view.isSymbolAnimationEnabled = value
        return self
    }
    
    @available(iOS 14.0, *)
    @discardableResult public func contextMenuInteraction(_ interaction: UIContextMenuInteraction, willDisplayMenuFor configuration: UIContextMenuConfiguration, animator: (any UIContextMenuInteractionAnimating)?) -> Self {
        self.view.contextMenuInteraction(interaction, willDisplayMenuFor: configuration, animator: animator)
        return self
    }
    
    @available(iOS 14.0, *)
    @discardableResult public func contextMenuInteraction(_ interaction: UIContextMenuInteraction, willEndFor configuration: UIContextMenuConfiguration, animator: (any UIContextMenuInteractionAnimating)?) -> Self {
        self.view.contextMenuInteraction(interaction, willEndFor: configuration, animator: animator)
        return self
    }
}
