
// https://github.com/wdq123550/MMSwiftUIKit

import UIKit
import SnapKit
import Combine

public typealias viewClosure = (() -> UIView)
public typealias viewsClosure = (() -> [UIView])

public struct LayerSet {
    public var cornerRadius: CGFloat? //圆角
    public var borderWidth: CGFloat? //边框宽度
    public var borderColor: UIColor? //边框颜色
    public var shadowColor: UIColor? //阴影颜色
    public var shadowOffset: CGSize? //阴影偏移
    public var shadowOpacity: Float? //阴影透明度
    public var shadowRadius: CGFloat? //阴影圆角
    public var shadowPath: CGPath? //阴影路径
    public var maskedCorners: CACornerMask? //部分圆角
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
