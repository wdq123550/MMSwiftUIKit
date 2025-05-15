//
//  UIViewExtension.swift
//  MMSwiftUIKit
//
//  Created by 小君夜麻吕 on 2025/5/13.
//

import Foundation
import UIKit
import SnapKit

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
    
    @discardableResult func setGradientBackground(colors: [UIColor], direction: MMGradientDirection) -> Self {
        // 确保视图有有效布局
        if self.bounds.size == .zero {
            self.setNeedsLayout()
            self.layoutIfNeeded()
        }
        
        // 移除已有渐变
        self.removeGradientLayer()
        
        // 配置渐变层
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = colors.map { $0.cgColor }
        gradientLayer.frame = self.bounds
        
        // 设置渐变方向
        switch direction {
        case .vertical:
            gradientLayer.startPoint = CGPoint(x: 0.5, y: 0.0)
            gradientLayer.endPoint = CGPoint(x: 0.5, y: 1.0)
        case .horizontal:
            gradientLayer.startPoint = CGPoint(x: 0.0, y: 0.5)
            gradientLayer.endPoint = CGPoint(x: 1.0, y: 0.5)
        case .topLeftToBottomRight:    // 新增对角线方向
            gradientLayer.startPoint = CGPoint(x: 0, y: 0)
            gradientLayer.endPoint = CGPoint(x: 1, y: 1)
        case .topRightToBottomLeft:    // 新增对角线方向
            gradientLayer.startPoint = CGPoint(x: 1, y: 0)
            gradientLayer.endPoint = CGPoint(x: 0, y: 1)
        }
        
        // 添加渐变层
        self.layer.insertSublayer(gradientLayer, at: 0)
        
        return self
    }

    private func removeGradientLayer() {
        self.layer.sublayers?.filter { $0 is CAGradientLayer }.forEach { $0.removeFromSuperlayer() }
    }
}
