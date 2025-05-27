//
//  MMViewChain.swift
//  MMSwiftUIKit
//
//  Created by 小君夜麻吕 on 2025/5/27.
//

import Foundation
import UIKit
import SnapKit

/// SnapKit 约束闭包类型
public typealias ConstraintsClosure = (_ make: ConstraintMaker) -> Void

public class MMViewChain<T>: MMResponderChain<T> where T: UIView {
    
    @discardableResult public func isUserInteractionEnabled(_ value: Bool) -> Self {
        self.view.isUserInteractionEnabled = value
        return self
    }
    
    @discardableResult public func tag(_ value: Int) -> Self {
        self.view.tag = value
        return self
    }
    
    @available(iOS 14.0, *)
    @discardableResult public func focusGroupIdentifier(_ value: String?) -> Self {
        self.view.focusGroupIdentifier = value
        return self
    }
    
    @available(iOS 15.0, *)
    @discardableResult public func focusGroupPriority(_ value: UIFocusGroupPriority) -> Self {
        self.view.focusGroupPriority = value
        return self
    }
    
    @available(iOS 15.0, *)
    @discardableResult public func focusEffect(_ value: UIFocusEffect?) -> Self {
        self.view.focusEffect = value
        return self
    }
    
    @discardableResult public func semanticContentAttribute(_ value: UISemanticContentAttribute) -> Self {
        self.view.semanticContentAttribute = value
        return self
    }
    
    @available(iOS 17.0, *)
    @MainActor public func unregisterForTraitChanges(_ registration: any UITraitChangeRegistration) -> Self {
        self.view.unregisterForTraitChanges(registration)
        return self
    }
    
    @available(iOS 17.0, *)
    @discardableResult public func traitOverrides(_ value: UITraitOverrides) -> Self {
        self.view.traitOverrides = value
        return self
    }
    
    @discardableResult public func frame(_ value: CGRect) -> Self {
        self.view.frame = value
        return self
    }
    
    @discardableResult public func bounds(_ value: CGRect) -> Self {
        self.view.bounds = value
        return self
    }
    
    @discardableResult public func center(_ value: CGPoint) -> Self {
        self.view.center = value
        return self
    }
    
    @discardableResult public func transform(_ value: CGAffineTransform) -> Self {
        self.view.transform = value
        return self
    }
    
    @discardableResult public func transform3D(_ value: CATransform3D) -> Self {
        self.view.transform3D = value
        return self
    }
    
    @discardableResult public func contentScaleFactor(_ value: CGFloat) -> Self {
        self.view.contentScaleFactor = value
        return self
    }
    
    @available(iOS 16.0, *)
    @discardableResult public func anchorPoint(_ value: CGPoint) -> Self {
        self.view.anchorPoint = value
        return self
    }
    
    @discardableResult public func isMultipleTouchEnabled(_ value: Bool) -> Self {
        self.view.isMultipleTouchEnabled = value
        return self
    }
    
    @discardableResult public func isExclusiveTouch(_ value: Bool) -> Self {
        self.view.isExclusiveTouch = value
        return self
    }
    
    @discardableResult public func autoresizesSubviews(_ value: Bool) -> Self {
        self.view.autoresizesSubviews = value
        return self
    }
    
    @discardableResult public func autoresizingMask(_ value: UIView.AutoresizingMask) -> Self {
        self.view.autoresizingMask = value
        return self
    }
    
    @discardableResult public func sizeToFit() -> Self {
        self.view.sizeToFit()
        return self
    }
    
    @discardableResult public func removeFromSuperview() -> Self {
        self.view.removeFromSuperview()
        return self
    }
    
    @discardableResult public func insertSubview(_ view: UIView, at index: Int) -> Self {
        self.view.insertSubview(view, at: index)
        return self
    }
    
    @discardableResult public func exchangeSubview(at index1: Int, withSubviewAt index2: Int) -> Self {
        self.view.exchangeSubview(at: index1, withSubviewAt: index2)
        return self
    }
    
    @discardableResult public func addSubview(_ view: UIView) -> Self {
        self.view.addSubview(view)
        return self
    }
    
    @discardableResult public func insertSubview(_ view: UIView, belowSubview siblingSubview: UIView) -> Self {
        self.view.insertSubview(view, belowSubview: siblingSubview)
        return self
    }
    
    @discardableResult public func insertSubview(_ view: UIView, aboveSubview siblingSubview: UIView) -> Self {
        self.view.insertSubview(view, aboveSubview: siblingSubview)
        return self
    }
    
    @discardableResult public func bringSubviewToFront(_ view: UIView) -> Self {
        self.view.bringSubviewToFront(view)
        return self
    }
    
    @discardableResult public func sendSubviewToBack(_ view: UIView) -> Self {
        self.view.sendSubviewToBack(view)
        return self
    }
    
    @discardableResult public func didAddSubview(_ subview: UIView) -> Self {
        self.view.didAddSubview(subview)
        return self
    }
    
    @discardableResult public func willRemoveSubview(_ subview: UIView) -> Self {
        self.view.willRemoveSubview(subview)
        return self
    }
    
    @discardableResult public func willMove(toSuperview newSuperview: UIView?) -> Self {
        self.view.willMove(toSuperview: newSuperview)
        return self
    }
    
    @discardableResult public func didMoveToSuperview() -> Self {
        self.view.didMoveToSuperview()
        return self
    }
    
    @discardableResult public func willMove(toWindow newWindow: UIWindow?) -> Self {
        self.view.willMove(toWindow: newWindow)
        return self
    }
    
    @discardableResult public func didMoveToWindow() -> Self {
        self.view.didMoveToWindow()
        return self
    }
    
    @discardableResult public func setNeedsLayout() -> Self {
        self.view.setNeedsLayout()
        return self
    }
    
    @discardableResult public func layoutIfNeeded() -> Self {
        self.view.layoutIfNeeded()
        return self
    }
    
    @discardableResult public func layoutSubviews() -> Self {
        self.view.layoutSubviews()
        return self
    }
    
    @discardableResult public func layoutMargins(_ value: UIEdgeInsets) -> Self {
        self.view.layoutMargins = value
        return self
    }
    
    @discardableResult public func directionalLayoutMargins(_ value: NSDirectionalEdgeInsets) -> Self {
        self.view.directionalLayoutMargins = value
        return self
    }
    
    @discardableResult public func preservesSuperviewLayoutMargins(_ value: Bool) -> Self {
        self.view.preservesSuperviewLayoutMargins = value
        return self
    }
    
    @discardableResult public func insetsLayoutMarginsFromSafeArea(_ value: Bool) -> Self {
        self.view.insetsLayoutMarginsFromSafeArea = value
        return self
    }
    
    @discardableResult public func layoutMarginsDidChange() -> Self {
        self.view.layoutMarginsDidChange()
        return self
    }
    
    @discardableResult public func safeAreaInsetsDidChange() -> Self {
        self.view.safeAreaInsetsDidChange()
        return self
    }
    
    @discardableResult public func draw(_ rect: CGRect) -> Self {
        self.view.draw(rect)
        return self
    }
    
    @discardableResult public func setNeedsDisplay() -> Self {
        self.view.setNeedsDisplay()
        return self
    }
    
    @discardableResult public func setNeedsDisplay(_ rect: CGRect) -> Self {
        self.view.setNeedsDisplay(rect)
        return self
    }
    
    @discardableResult public func clipsToBounds(_ value: Bool) -> Self {
        self.view.clipsToBounds = value
        return self
    }
    
    @discardableResult public func backgroundColor(_ value: UIColor?) -> Self {
        self.view.backgroundColor = value
        return self
    }
    
    @discardableResult public func alpha(_ value: CGFloat) -> Self {
        self.view.alpha = value
        return self
    }
    
    @discardableResult public func isOpaque(_ value: Bool) -> Self {
        self.view.isOpaque = value
        return self
    }
    
    @discardableResult public func clearsContextBeforeDrawing(_ value: Bool) -> Self {
        self.view.clearsContextBeforeDrawing = value
        return self
    }
    
    @discardableResult public func isHidden(_ value: Bool) -> Self {
        self.view.isHidden = value
        return self
    }
    
    @discardableResult public func contentMode(_ value: UIView.ContentMode) -> Self {
        self.view.contentMode = value
        return self
    }
    
    @discardableResult public func mask(_ value: UIView?) -> Self {
        self.view.mask = value
        return self
    }
    
    @discardableResult public func tintColor(_ value: UIColor!) -> Self {
        self.view.tintColor = value
        return self
    }
    
    @discardableResult public func tintAdjustmentMode(_ value: UIView.TintAdjustmentMode) -> Self {
        self.view.tintAdjustmentMode = value
        return self
    }
    
    @discardableResult public func tintColorDidChange() -> Self {
        self.view.tintColorDidChange()
        return self
    }
    
    @discardableResult public func gestureRecognizers(_ value: [UIGestureRecognizer]?) -> Self {
        self.view.gestureRecognizers = value
        return self
    }
    
    @discardableResult public func addGestureRecognizer(_ gestureRecognizer: UIGestureRecognizer) -> Self {
        self.view.addGestureRecognizer(gestureRecognizer)
        return self
    }
    
    @discardableResult public func removeGestureRecognizer(_ gestureRecognizer: UIGestureRecognizer) -> Self {
        self.view.removeGestureRecognizer(gestureRecognizer)
        return self
    }
    
    @discardableResult public func addMotionEffect(_ effect: UIMotionEffect) -> Self {
        self.view.addMotionEffect(effect)
        return self
    }
    
    @discardableResult public func removeMotionEffect(_ effect: UIMotionEffect) -> Self {
        self.view.removeMotionEffect(effect)
        return self
    }
    
    @discardableResult public func motionEffects(_ value: [UIMotionEffect]) -> Self {
        self.view.motionEffects = value
        return self
    }
    
    @discardableResult public func overlay(_ content: viewClosure) -> Self {
        self.view.addSubview(content())
        return self
    }
    
    @discardableResult public func overlays(_ contents: viewsClosure) -> Self {
        contents().forEach { view in
            self.view.addSubview(view)
        }
        return self
    }
    
    @discardableResult public func makeConstraints(_ closure: @escaping ConstraintsClosure) -> Self {
        if self.view.superview == nil { //先把约束闭包存起来
            self.view.constraintsClosure = closure
        }else{
            self.view.snp.makeConstraints(closure)
        }
        return self
    }
    
    @discardableResult public func updateConstraints(_ closure: (_ make: ConstraintMaker) -> Void) -> Self{
        self.view.snp.updateConstraints(closure)
        return self
    }
    
    @discardableResult public func remakeConstraints(_ closure: (_ make: ConstraintMaker) -> Void) -> Self{
        self.view.snp.remakeConstraints(closure)
        return self
    }
    
    @discardableResult public func addConstraint(_ constraint: NSLayoutConstraint) -> Self {
        self.view.addConstraint(constraint)
        return self
    }
    
    @discardableResult public func addConstraints(_ constraints: [NSLayoutConstraint]) -> Self {
        self.view.addConstraints(constraints)
        return self
    }
    
    @discardableResult public func removeConstraint(_ constraint: NSLayoutConstraint) -> Self {
        self.view.removeConstraint(constraint)
        return self
    }
    
    @discardableResult public func removeConstraints(_ constraints: [NSLayoutConstraint]) -> Self {
        self.view.removeConstraints(constraints)
        return self
    }
    
    @discardableResult public func updateConstraintsIfNeeded() -> Self {
        self.view.updateConstraintsIfNeeded()
        return self
    }
    
    @discardableResult public func updateConstraints() -> Self {
        self.view.updateConstraints()
        return self
    }
    
    @discardableResult public func setNeedsUpdateConstraints() -> Self {
        self.view.setNeedsUpdateConstraints()
        return self
    }
    
    @discardableResult public func translatesAutoresizingMaskIntoConstraints(_ value: Bool) -> Self {
        self.view.translatesAutoresizingMaskIntoConstraints = value
        return self
    }
    
    @discardableResult public func invalidateIntrinsicContentSize() -> Self {
        self.view.invalidateIntrinsicContentSize()
        return self
    }
    
    @discardableResult public func setContentHuggingPriority(_ priority: UILayoutPriority, for axis: NSLayoutConstraint.Axis) -> Self {
        self.view.setContentHuggingPriority(priority, for: axis)
        return self
    }
    
    @discardableResult public func setContentCompressionResistancePriority(_ priority: UILayoutPriority, for axis: NSLayoutConstraint.Axis) -> Self {
        self.view.setContentCompressionResistancePriority(priority, for: axis)
        return self
    }
    
    @discardableResult public func addLayoutGuide(_ layoutGuide: UILayoutGuide) -> Self {
        self.view.addLayoutGuide(layoutGuide)
        return self
    }
    
    @discardableResult public func removeLayoutGuide(_ layoutGuide: UILayoutGuide) -> Self {
        self.view.removeLayoutGuide(layoutGuide)
        return self
    }
    
    @discardableResult public func exerciseAmbiguityInLayout() -> Self {
        self.view.exerciseAmbiguityInLayout()
        return self
    }
    
    @discardableResult public func restorationIdentifier(_ value: String?) -> Self {
        self.view.restorationIdentifier = value
        return self
    }
    
    @discardableResult public func encodeRestorableState(with coder: NSCoder) -> Self {
        self.view.encodeRestorableState(with: coder)
        return self
    }
    
    @discardableResult public func decodeRestorableState(with coder: NSCoder) -> Self {
        self.view.decodeRestorableState(with: coder)
        return self
    }
    
    @discardableResult public func overrideUserInterfaceStyle(_ value: UIUserInterfaceStyle) -> Self {
        self.view.overrideUserInterfaceStyle = value
        return self
    }
    
    @discardableResult public func minimumContentSizeCategory(_ value: UIContentSizeCategory?) -> Self {
        self.view.minimumContentSizeCategory = value
        return self
    }
    
    @discardableResult public func maximumContentSizeCategory(_ value: UIContentSizeCategory?) -> Self {
        self.view.maximumContentSizeCategory = value
        return self
    }
    
    @available(iOS 17.0, *)
    @discardableResult public func updateTraitsIfNeeded() -> Self {
        self.view.updateTraitsIfNeeded()
        return self
    }
    
    @discardableResult public func layerSet(_ value: LayerSet) -> Self {
        self.view.layer.cornerRadius = value.cornerRadius ?? 0
        self.view.layer.borderWidth = value.borderWidth ?? 0
        self.view.layer.borderColor = value.borderColor?.cgColor
        self.view.layer.shadowColor = value.shadowColor?.cgColor
        self.view.layer.shadowOpacity = value.shadowOpacity ?? 0
        self.view.layer.shadowRadius = value.shadowRadius ?? 0
        self.view.layer.shadowPath = value.shadowPath
        if let maskedCorners = value.maskedCorners {
            self.view.layer.maskedCorners = maskedCorners
        }
        return self
    }
    
    @discardableResult public func superview(_ value: UIView) -> Self {
        value.addSubview(self.view)
        self.view.applyConstraints()
        return self
    }
    
    @discardableResult public func setGradientBackground(colors: [UIColor], direction: MMGradientDirection) -> Self {
        // 确保视图有有效布局
        if self.view.bounds.size == .zero {
            self.setNeedsLayout()
            self.layoutIfNeeded()
        }
        
        // 移除已有渐变
        self.removeGradientLayer()
        
        // 配置渐变层
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = colors.map { $0.cgColor }
        gradientLayer.frame = self.view.bounds
        
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
        self.view.layer.insertSublayer(gradientLayer, at: 0)
        
        return self
    }

    private func removeGradientLayer() {
        self.view.layer.sublayers?.filter { $0 is CAGradientLayer }.forEach { $0.removeFromSuperlayer() }
    }
    
    
    @discardableResult public func makeConstraints(superview: UIView, _ closure: (_ make: ConstraintMaker) -> Void) -> Self {
        self.view.superview(superview)
        self.view.snp.makeConstraints(closure)
        return self
    }
}

extension UIView {
    // 使用静态的 Void 指针作为键（安全且无警告）
    private struct AssociatedKeys {
        static var snapKitConstraintsKey: Void?
    }
    
    /// 关联的 SnapKit 约束闭包
    public var constraintsClosure: ConstraintsClosure? {
        get {
            // 从关联对象中获取闭包
            return objc_getAssociatedObject(self, &AssociatedKeys.snapKitConstraintsKey) as? ConstraintsClosure
        }
        set {
            // 将闭包存储到关联对象中（内存策略为 RETAIN_NONATOMIC）
            objc_setAssociatedObject(
                self,
                &AssociatedKeys.snapKitConstraintsKey,
                newValue,
                .OBJC_ASSOCIATION_RETAIN_NONATOMIC
            )
        }
    }
    
    /// 应用存储的 SnapKit 约束
    public func applyConstraints() {
        guard let closure = constraintsClosure else { return }
        self.snp.remakeConstraints(closure)
        self.constraintsClosure = nil
    }
}
