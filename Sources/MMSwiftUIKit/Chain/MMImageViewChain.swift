//
//  MMImageViewChain.swift
//  MMSwiftUIKit
//
//  Created by 小君夜麻吕 on 2025/5/27.
//

import UIKit

public class MMImageViewChain<T>: MMViewChain<T> where T: UIImageView {
    
    @discardableResult public func image(_ value: UIImage?) -> Self {
        self.view.image = value
        return self
    }
    
    @discardableResult public func highlightedImage(_ value: UIImage?) -> Self {
        self.view.highlightedImage = value
        return self
    }
    
    @discardableResult public func preferredSymbolConfiguration(_ value: UIImage.SymbolConfiguration?) -> Self {
        self.view.preferredSymbolConfiguration = value
        return self
    }
    
    @discardableResult public func isHighlighted(_ value: Bool) -> Self {
        self.view.isHighlighted = value
        return self
    }
    
    @discardableResult public func animationImages(_ value: [UIImage]?) -> Self {
        self.view.animationImages = value
        return self
    }
    
    @discardableResult public func highlightedAnimationImages(_ value: [UIImage]?) -> Self {
        self.view.highlightedAnimationImages = value
        return self
    }
    
    @discardableResult public func animationDuration(_ value: TimeInterval) -> Self {
        self.view.animationDuration = value
        return self
    }
    
    @discardableResult public func animationRepeatCount(_ value: Int) -> Self {
        self.view.animationRepeatCount = value
        return self
    }
    
    @discardableResult public func startAnimating() -> Self {
        self.view.startAnimating()
        return self
    }
    
    @discardableResult public func stopAnimating() -> Self {
        self.view.stopAnimating()
        return self
    }
    
    @available(iOS 17.0, *)
    @discardableResult public func preferredImageDynamicRange(_ value: UIImage.DynamicRange) -> Self {
        self.view.preferredImageDynamicRange = value
        return self
    }
}
