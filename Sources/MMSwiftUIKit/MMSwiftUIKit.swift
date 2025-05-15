
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
    public init(cornerRadius: CGFloat? = nil,
         borderWidth: CGFloat? = nil,
         borderColor: UIColor? = nil,
         shadowColor: UIColor? = nil,
         shadowOffset: CGSize? = nil,
         shadowOpacity: Float? = nil,
         shadowRadius: CGFloat? = nil,
         shadowPath: CGPath? = nil) {
        self.cornerRadius = cornerRadius
        self.borderWidth = borderWidth
        self.borderColor = borderColor
        self.shadowColor = shadowColor
        self.shadowOffset = shadowOffset
        self.shadowOpacity = shadowOpacity
        self.shadowRadius = shadowRadius
        self.shadowPath = shadowPath
    }
}

public enum MMGradientDirection {
    case vertical                  // 垂直（默认上到下）
    case horizontal               // 水平（左到右）
    case topLeftToBottomRight     // 左上到右下
    case topRightToBottomLeft     // 右上到左下
}
