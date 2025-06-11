//
//  MMButton.swift
//  MMSwiftUIKit
//
//  Created by 小君夜麻吕 on 2025/5/13.
//

import UIKit

@MainActor open class MMButton: UIButton {
    
    public var mm: MMButtonChain<MMButton> { MMButtonChain(view: self) }
    
    public class ButtonItem {
        var font: UIFont?
        var title: String?
        var titleColor: UIColor?
        var attributeText: NSAttributedString?
        var image: UIImage?
        var imagePosition: NSDirectionalRectEdge?
        var spacing: CGFloat?
        var bgColor: UIColor?
        var bgImage: UIImage?
        var contentInsets: NSDirectionalEdgeInsets?
        var state: UIControl.State
        
        public init(font: UIFont? = nil, title: String? = nil, titleColor: UIColor? = nil, attributeText: NSAttributedString? = nil, image: UIImage? = nil, imagePosition: NSDirectionalRectEdge? = nil, spacing: CGFloat? = nil, bgColor: UIColor? = nil, bgImage: UIImage? = nil, contentInsets: NSDirectionalEdgeInsets? = nil, state: UIControl.State) {
            self.font = font
            self.title = title
            self.titleColor = titleColor
            self.attributeText = attributeText
            self.image = image
            self.imagePosition = imagePosition
            self.spacing = spacing
            self.bgColor = bgColor
            self.bgImage = bgImage
            self.contentInsets = contentInsets
            self.state = state
        }
    }
    
    open override var isSelected: Bool {
        didSet {
            self.state = isSelected ? .selected : super.state
        }
    }
    
    open override var isEnabled: Bool {
        didSet {
            self.state = !isEnabled ? .disabled : super.state
        }
    }
    
    open override var isHighlighted: Bool {
        didSet {
            self.state = isHighlighted ? .highlighted : super.state
        }
    }
    
    public override var state: UIControl.State {
        set { _state = newValue }
        get { self._state }
    }
    
    @discardableResult public func buttonItem(_ value: ButtonItem) -> Self {
        self.buttonItems.append(value)
        if value.state == self.state { self.applyButtonItem(buttonItem: value) }
        return self
    }
    
    @discardableResult public func updateButtonItem(_ value: ButtonItem) -> Self {
        if let font = value.font {
            self.buttonItems.filter { $0.state == value.state }.first?.font = font
        }
        if let title = value.title {
            self.buttonItems.filter { $0.state == value.state }.first?.title = title
        }
        if let titleColor = value.titleColor {
            self.buttonItems.filter { $0.state == value.state }.first?.titleColor = titleColor
        }
        if let image = value.image {
            self.buttonItems.filter { $0.state == value.state }.first?.image = image
        }
        if let imagePosition = value.imagePosition {
            self.buttonItems.filter { $0.state == value.state }.first?.imagePosition = imagePosition
        }
        if let spacing = value.spacing {
            self.buttonItems.filter { $0.state == value.state }.first?.spacing = spacing
        }
        if let bgColor = value.bgColor {
            self.buttonItems.filter { $0.state == value.state }.first?.bgColor = bgColor
        }
        if let bgImage = value.bgImage {
            self.buttonItems.filter { $0.state == value.state }.first?.bgImage = bgImage
        }
        if let contentInsets = value.contentInsets {
            self.buttonItems.filter { $0.state == value.state }.first?.contentInsets = contentInsets
        }
        if let attributeText = value.attributeText {
            self.buttonItems.filter { $0.state == value.state }.first?.attributeText = attributeText
        }
        if let buttonItem = self.buttonItems.filter({ $0.state == value.state }).first {
            self.applyButtonItem(buttonItem: buttonItem)
        }
        return self
    }
    
    private var buttonItems = [ButtonItem]()
    private var _state: UIControl.State = .normal {
        didSet {
            for buttonItem in buttonItems {
                if buttonItem.state == _state {
                    self.applyButtonItem(buttonItem: buttonItem)
                }
            }
        }
    }
    
    private func applyButtonItem(buttonItem: ButtonItem) {
        var config = UIButton.Configuration.plain()
        if let attributeText = buttonItem.attributeText {
            config.attributedTitle = .init(attributeText)
        }else{
            config.attributedTitle = AttributedString.init(.init(string: buttonItem.title ?? "", attributes: [
                .font: buttonItem.font ?? .systemFont(ofSize: 16),
                .foregroundColor: buttonItem.titleColor ?? UIColor.white
            ]))
        }
        config.contentInsets = buttonItem.contentInsets ?? .zero
        config.image = buttonItem.image
        config.imagePlacement = buttonItem.imagePosition ?? .leading
        config.imagePadding = buttonItem.spacing ?? 0
        config.background.backgroundColor = buttonItem.bgColor ?? .clear
        config.background.image = buttonItem.bgImage
        self.configuration = config
    }
}

