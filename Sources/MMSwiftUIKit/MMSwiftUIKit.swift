
// https://github.com/wdq123550/MMSwiftUIKit

import UIKit
import SnapKit
import Combine

public typealias viewClosure = (() -> UIView)
public typealias viewsClosure = (() -> [UIView])

public struct LayerSet {
    public var cornerRadius: CGFloat?
    public var borderWidth: CGFloat?
    public var borderColor: UIColor?
    public var shadowColor: UIColor?
    public var shadowOffset: CGSize?
    public var shadowOpacity: Float?
    public var shadowRadius: CGFloat?
    public var shadowPath: CGPath?
    public var maskedCorners: CACornerMask?
    public init(cornerRadius: CGFloat? = nil, borderWidth: CGFloat? = nil, borderColor: UIColor? = nil, shadowColor: UIColor? = nil, shadowOffset: CGSize? = nil, shadowOpacity: Float? = nil, shadowRadius: CGFloat? = nil, shadowPath: CGPath? = nil, maskedCorners: CACornerMask? = nil) {
        self.cornerRadius = cornerRadius
        self.borderWidth = borderWidth
        self.borderColor = borderColor
        self.shadowColor = shadowColor
        self.shadowOffset = shadowOffset
        self.shadowOpacity = shadowOpacity
        self.shadowRadius = shadowRadius
        self.shadowPath = shadowPath
        self.maskedCorners = maskedCorners
    }
}

public enum MMGradientDirection {
    case vertical                  // 垂直（默认上到下）
    case horizontal               // 水平（左到右）
    case topLeftToBottomRight     // 左上到右下
    case topRightToBottomLeft     // 右上到左下
}


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
    var state: UIControl.State
    var contentInsets: NSDirectionalEdgeInsets?
    
    public init(font: UIFont? = nil, title: String? = nil, titleColor: UIColor? = nil, attributeText: NSAttributedString? = nil, image: UIImage? = nil, imagePosition: NSDirectionalRectEdge? = nil, spacing: CGFloat? = nil, bgColor: UIColor? = nil, bgImage: UIImage? = nil, state: UIControl.State, contentInsets: NSDirectionalEdgeInsets? = nil) {
        self.font = font
        self.title = title
        self.titleColor = titleColor
        self.attributeText = attributeText
        self.image = image
        self.imagePosition = imagePosition
        self.spacing = spacing
        self.bgColor = bgColor
        self.bgImage = bgImage
        self.state = state
        self.contentInsets = contentInsets
    }
}
