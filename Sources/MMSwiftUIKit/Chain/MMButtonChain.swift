//
//  MMButtonChain.swift
//  MMSwiftUIKit
//
//  Created by 小君夜麻吕 on 2025/5/27.
//

import UIKit

public class MMButtonChain<T>: MMControlChain<T> where T: MMButton {
    
    @MainActor @discardableResult public func updateButtonItem(_ value: MMButton.ButtonItem) -> Self {
        self.view.updateButtonItem(value)
        return self
    }
    
    @MainActor @discardableResult public func buttonItem(_ value: MMButton.ButtonItem) -> Self {
        self.view.buttonItem(value)
        return self
    }
    
    @discardableResult public func setTitle(_ title: String?, for state: UIControl.State) -> Self {
        self.view.setTitle(title, for: state)
        return self
    }
    
    @discardableResult public func setTitleColor(_ color: UIColor?, for state: UIControl.State) -> Self {
        self.view.setTitleColor(color, for: state)
        return self
    }
    
    @discardableResult public func setTitleShadowColor(_ color: UIColor?, for state: UIControl.State) -> Self {
        self.view.setTitleShadowColor(color, for: state)
        return self
    }
    
    @discardableResult public func setImage(_ image: UIImage?, for state: UIControl.State) -> Self {
        self.view.setImage(image, for: state)
        return self
    }
    
    @discardableResult public func setBackgroundImage(_ image: UIImage?, for state: UIControl.State) -> Self {
        self.view.setBackgroundImage(image, for: state)
        return self
    }
    
    @available(iOS 13.0, *)
    @discardableResult public func setPreferredSymbolConfiguration(_ configuration: UIImage.SymbolConfiguration?, forImageIn state: UIControl.State) -> Self {
        self.view.setPreferredSymbolConfiguration(configuration, forImageIn: state)
        return self
    }
    
    @available(iOS 6.0, *)
    @discardableResult public func setAttributedTitle(_ title: NSAttributedString?, for state: UIControl.State) -> Self {
        self.view.setAttributedTitle(title, for: state)
        return self
    }
    
    @available(iOS 15.0, *)
    @discardableResult public func setNeedsUpdateConfiguration() -> Self {
        self.view.setNeedsUpdateConfiguration()
        return self
    }
    
    @available(iOS 15.0, *)
    @discardableResult public func updateConfiguration() -> Self {
        self.view.updateConfiguration()
        return self
    }
    
    @available(iOS 15.0, *)
    @discardableResult public func configurationUpdateHandler(_ handler: UIButton.ConfigurationUpdateHandler?) -> Self {
        self.view.configurationUpdateHandler = handler
        return self
    }
    
    @available(iOS 15.0, *)
    @discardableResult public func automaticallyUpdatesConfiguration(_ value: Bool) -> Self {
        self.view.automaticallyUpdatesConfiguration = value
        return self
    }
    
    @available(iOS 14.0, *)
    @discardableResult public func role(_ value: UIButton.Role) -> Self {
        self.view.role = value
        return self
    }
    
    @available(iOS 13.4, *)
    @discardableResult public func isPointerInteractionEnabled(_ value: Bool) -> Self {
        self.view.isPointerInteractionEnabled = value
        return self
    }
    
    @available(iOS 14.0, *)
    @discardableResult public func menu(_ value: UIMenu?) -> Self {
        self.view.menu = value
        return self
    }
    
    @available(iOS 16.0, *)
    @discardableResult public func preferredMenuElementOrder(_ value: UIContextMenuConfiguration.ElementOrder) -> Self {
        self.view.preferredMenuElementOrder = value
        return self
    }
    
    @available(iOS 15.0, *)
    @discardableResult public func changesSelectionAsPrimaryAction(_ value: Bool) -> Self {
        self.view.changesSelectionAsPrimaryAction = value
        return self
    }
    
    @available(iOS 15.0, *)
    @discardableResult public func configuration(_ value: UIButton.Configuration?) -> Self {
        self.view.configuration = value
        return self
    }
    
    @available(iOS 13.4, *)
    @discardableResult public func pointerStyleProvider(_ value: UIButton.PointerStyleProvider?) -> Self {
        self.view.pointerStyleProvider = value
        return self
    }
    
    // 已废弃的属性，但为了兼容性仍然保留
    @available(iOS, introduced: 2.0, deprecated: 15.0, message: "This property is ignored when using UIButtonConfiguration")
    @discardableResult public func contentEdgeInsets(_ value: UIEdgeInsets) -> Self {
        self.view.contentEdgeInsets = value
        return self
    }
    
    @available(iOS, introduced: 2.0, deprecated: 15.0, message: "This property is ignored when using UIButtonConfiguration")
    @discardableResult public func titleEdgeInsets(_ value: UIEdgeInsets) -> Self {
        self.view.titleEdgeInsets = value
        return self
    }
    
    @available(iOS, introduced: 2.0, deprecated: 15.0, message: "This property is ignored when using UIButtonConfiguration")
    @discardableResult public func imageEdgeInsets(_ value: UIEdgeInsets) -> Self {
        self.view.imageEdgeInsets = value
        return self
    }
    
    @available(iOS, introduced: 2.0, deprecated: 15.0, message: "This property is ignored when using UIButtonConfiguration")
    @discardableResult public func reversesTitleShadowWhenHighlighted(_ value: Bool) -> Self {
        self.view.reversesTitleShadowWhenHighlighted = value
        return self
    }
    
    @available(iOS, introduced: 2.0, deprecated: 15.0, message: "This property is ignored when using UIButtonConfiguration")
    @discardableResult public func adjustsImageWhenHighlighted(_ value: Bool) -> Self {
        self.view.adjustsImageWhenHighlighted = value
        return self
    }
    
    @available(iOS, introduced: 2.0, deprecated: 15.0, message: "This property is ignored when using UIButtonConfiguration")
    @discardableResult public func adjustsImageWhenDisabled(_ value: Bool) -> Self {
        self.view.adjustsImageWhenDisabled = value
        return self
    }
    
    @available(iOS, introduced: 2.0, deprecated: 15.0, message: "This property is ignored when using UIButtonConfiguration")
    @discardableResult public func showsTouchWhenHighlighted(_ value: Bool) -> Self {
        self.view.showsTouchWhenHighlighted = value
        return self
    }
}
