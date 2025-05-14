//
//  UIViewExtension.swift
//  MMSwiftUIKit
//
//  Created by 小君夜麻吕 on 2025/5/13.
//

import Foundation
import UIKit
import SnapKit

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
    init(cornerRadius: CGFloat? = nil,
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

public extension UIView {
    
    @discardableResult func isUserInteractionEnabled(_ value: Bool) -> Self {
        self.isUserInteractionEnabled = value
        return self
    }
    
    @discardableResult func tag(_ value: Int) -> Self {
        self.tag = value
        return self
    }
    
    @discardableResult func semanticContentAttribute(_ value: UISemanticContentAttribute) -> Self {
        self.semanticContentAttribute = value
        return self
    }
    
    @discardableResult func frame(_ value: CGRect) -> Self {
        self.frame = value
        return self
    }
    
    @discardableResult func bounds(_ value: CGRect) -> Self {
        self.bounds = value
        return self
    }
    
    @discardableResult func center(_ value: CGPoint) -> Self {
        self.center = value
        return self
    }
    
    @discardableResult func transform(_ value: CGAffineTransform) -> Self {
        self.transform = value
        return self
    }
    
    @discardableResult func overlay(_ content: viewClosure) -> UIView {
        let view = content()
        self.addSubview(view)
        return self
    }
    
    @discardableResult func overlays(_ contents: viewsClosure) -> UIView {
        let views = contents()
        for view in views {
            self.addSubview(view)
        }
        return self
    }
    
    @discardableResult func makeConstraints(_ closure: (_ make: ConstraintMaker) -> Void) -> Self{
        self.snp.makeConstraints(closure)
        return self
    }
    
    @discardableResult func clipsToBounds(_ value: Bool) -> Self {
        self.clipsToBounds = value
        return self
    }
    
    @discardableResult func alpha(_ value: CGFloat) -> Self {
        self.alpha = value
        return self
    }
    
    @discardableResult func isHidden(_ value: Bool) -> Self {
        self.isHidden = value
        return self
    }
    
    @discardableResult func contentMode(_ value: UIView.ContentMode) -> Self {
        self.contentMode = value
        return self
    }
    
    @discardableResult func tintColor(_ value: UIColor) -> Self {
        self.tintColor = value
        return self
    }
    
    @discardableResult func backgroundColor(_ value: UIColor) -> Self {
        self.backgroundColor = value
        return self
    }
    
    @discardableResult func layerSet(_ value: LayerSet) -> Self {
        self.layer.cornerRadius = value.cornerRadius ?? 0
        self.layer.borderWidth = value.borderWidth ?? 0
        self.layer.borderColor = value.borderColor?.cgColor
        self.layer.shadowColor = value.shadowColor?.cgColor
        self.layer.shadowOpacity = value.shadowOpacity ?? 0
        self.layer.shadowRadius = value.shadowRadius ?? 0
        self.layer.shadowPath = value.shadowPath
        return self
    }
    
    @discardableResult func superview(_ value: UIView) -> Self {
        value.addSubview(self)
        return self
    }
}
