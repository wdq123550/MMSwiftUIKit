//
//  MMCollectionReusableViewChain.swift
//  MMSwiftUIKit
//
//  Created by 小君夜麻吕 on 2025/5/27.
//

import UIKit

public class MMCollectionReusableViewChain<T>: MMViewChain<T> where T: UICollectionReusableView {
    
    @discardableResult public func prepareForReuse() -> Self {
        self.view.prepareForReuse()
        return self
    }
    
    @discardableResult public func apply(_ layoutAttributes: UICollectionViewLayoutAttributes) -> Self {
        self.view.apply(layoutAttributes)
        return self
    }
    
    @discardableResult public func willTransition(from oldLayout: UICollectionViewLayout, to newLayout: UICollectionViewLayout) -> Self {
        self.view.willTransition(from: oldLayout, to: newLayout)
        return self
    }
    
    @discardableResult public func didTransition(from oldLayout: UICollectionViewLayout, to newLayout: UICollectionViewLayout) -> Self {
        self.view.didTransition(from: oldLayout, to: newLayout)
        return self
    }
} 