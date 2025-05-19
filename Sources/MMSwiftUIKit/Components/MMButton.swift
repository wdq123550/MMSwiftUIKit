//
//  MMButton.swift
//  MMSwiftUIKit
//
//  Created by 小君夜麻吕 on 2025/5/13.
//

import UIKit

@MainActor open class MMButton: UIButton {
    
    public struct ButtonItem {
        var font: UIFont?
        var title: String?
        var titleColor: UIColor?
        var image: UIImage?
        var imagePosition: NSDirectionalRectEdge?
        var spacing: CGFloat?
        var bgColor: UIColor?
        var bgImage: UIImage?
        var state: UIControl.State
        
        public init(font: UIFont? = nil, title: String? = nil, titleColor: UIColor? = nil, image: UIImage? = nil, imagePosition: NSDirectionalRectEdge? = nil, spacing: CGFloat? = nil, bgColor: UIColor? = nil, bgImage: UIImage? = nil, state: UIControl.State) {
            self.font = font
            self.title = title
            self.titleColor = titleColor
            self.image = image
            self.imagePosition = imagePosition
            self.spacing = spacing
            self.bgColor = bgColor
            self.bgImage = bgImage
            self.state = state
        }
    }
    
    public override var state: UIControl.State {
        set { _state = newValue }
        get { self._state }
    }
    
    public func buttonItem(_ value: ButtonItem) -> Self {
        self.buttonItems.append(value)
        if value.state == self.state { self.applyButtonItem(buttonItem: value) }
        return self
    }
    
    public func isHighlighted(_ value: Bool) -> Self {
        self.isHighlighted = value
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
        config.contentInsets = .zero
        config.title = buttonItem.title
        config.baseForegroundColor = buttonItem.titleColor
        config.image = buttonItem.image
        config.imagePlacement = buttonItem.imagePosition ?? .leading
        config.imagePadding = buttonItem.spacing ?? 0
        config.background.backgroundColor = buttonItem.bgColor ?? .clear
        config.background.image = buttonItem.bgImage
        config.titleTextAttributesTransformer = UIConfigurationTextAttributesTransformer { incoming in
            var outgoing = incoming
            outgoing.font = buttonItem.font
            return outgoing
        }
        self.configuration = config
    }
}

