//
//  MMScrollViewChain.swift
//  MMSwiftUIKit
//
//  Created by 小君夜麻吕 on 2025/5/27.
//

import UIKit

public class MMScrollViewChain<T>: MMViewChain<T> where T: UIScrollView {
    
    @discardableResult public func contentOffset(_ value: CGPoint) -> Self {
        self.view.contentOffset = value
        return self
    }
    
    @discardableResult public func contentSize(_ value: CGSize) -> Self {
        self.view.contentSize = value
        return self
    }
    
    @discardableResult public func contentInset(_ value: UIEdgeInsets) -> Self {
        self.view.contentInset = value
        return self
    }
    
    @available(iOS 17.4, *)
    @discardableResult public func contentAlignmentPoint(_ value: CGPoint) -> Self {
        self.view.contentAlignmentPoint = value
        return self
    }
    
    @available(iOS 11.0, *)
    @discardableResult public func adjustedContentInsetDidChange() -> Self {
        self.view.adjustedContentInsetDidChange()
        return self
    }
    
    @available(iOS 11.0, *)
    @discardableResult public func contentInsetAdjustmentBehavior(_ value: UIScrollView.ContentInsetAdjustmentBehavior) -> Self {
        self.view.contentInsetAdjustmentBehavior = value
        return self
    }
    
    @available(iOS 13.0, *)
    @discardableResult public func automaticallyAdjustsScrollIndicatorInsets(_ value: Bool) -> Self {
        self.view.automaticallyAdjustsScrollIndicatorInsets = value
        return self
    }
    
    @discardableResult public func delegate(_ value: (any UIScrollViewDelegate)?) -> Self {
        self.view.delegate = value
        return self
    }
    
    @discardableResult public func isDirectionalLockEnabled(_ value: Bool) -> Self {
        self.view.isDirectionalLockEnabled = value
        return self
    }
    
    @discardableResult public func bounces(_ value: Bool) -> Self {
        self.view.bounces = value
        return self
    }
    
    @available(iOS 17.4, *)
    @discardableResult public func bouncesHorizontally(_ value: Bool) -> Self {
        self.view.bouncesHorizontally = value
        return self
    }
    
    @available(iOS 17.4, *)
    @discardableResult public func bouncesVertically(_ value: Bool) -> Self {
        self.view.bouncesVertically = value
        return self
    }
    
    @discardableResult public func alwaysBounceVertical(_ value: Bool) -> Self {
        self.view.alwaysBounceVertical = value
        return self
    }
    
    @discardableResult public func alwaysBounceHorizontal(_ value: Bool) -> Self {
        self.view.alwaysBounceHorizontal = value
        return self
    }
    
    @discardableResult public func isPagingEnabled(_ value: Bool) -> Self {
        self.view.isPagingEnabled = value
        return self
    }
    
    @discardableResult public func isScrollEnabled(_ value: Bool) -> Self {
        self.view.isScrollEnabled = value
        return self
    }
    
    @available(iOS 17.4, *)
    @discardableResult public func transfersHorizontalScrollingToParent(_ value: Bool) -> Self {
        self.view.transfersHorizontalScrollingToParent = value
        return self
    }
    
    @available(iOS 17.4, *)
    @discardableResult public func transfersVerticalScrollingToParent(_ value: Bool) -> Self {
        self.view.transfersVerticalScrollingToParent = value
        return self
    }
    
    @discardableResult public func showsVerticalScrollIndicator(_ value: Bool) -> Self {
        self.view.showsVerticalScrollIndicator = value
        return self
    }
    
    @discardableResult public func showsHorizontalScrollIndicator(_ value: Bool) -> Self {
        self.view.showsHorizontalScrollIndicator = value
        return self
    }
    
    @discardableResult public func indicatorStyle(_ value: UIScrollView.IndicatorStyle) -> Self {
        self.view.indicatorStyle = value
        return self
    }
    
    @available(iOS 11.1, *)
    @discardableResult public func verticalScrollIndicatorInsets(_ value: UIEdgeInsets) -> Self {
        self.view.verticalScrollIndicatorInsets = value
        return self
    }
    
    @available(iOS 11.1, *)
    @discardableResult public func horizontalScrollIndicatorInsets(_ value: UIEdgeInsets) -> Self {
        self.view.horizontalScrollIndicatorInsets = value
        return self
    }
    
    @discardableResult public func scrollIndicatorInsets(_ value: UIEdgeInsets) -> Self {
        self.view.scrollIndicatorInsets = value
        return self
    }
    
    @available(iOS 3.0, *)
    @discardableResult public func decelerationRate(_ value: UIScrollView.DecelerationRate) -> Self {
        self.view.decelerationRate = value
        return self
    }
    
    @discardableResult public func indexDisplayMode(_ value: UIScrollView.IndexDisplayMode) -> Self {
        self.view.indexDisplayMode = value
        return self
    }
    
    @discardableResult public func setContentOffset(_ contentOffset: CGPoint, animated: Bool) -> Self {
        self.view.setContentOffset(contentOffset, animated: animated)
        return self
    }
    
    @discardableResult public func scrollRectToVisible(_ rect: CGRect, animated: Bool) -> Self {
        self.view.scrollRectToVisible(rect, animated: animated)
        return self
    }
    
    @discardableResult public func flashScrollIndicators() -> Self {
        self.view.flashScrollIndicators()
        return self
    }
    
    @available(iOS 17.4, *)
    @discardableResult public func withScrollIndicatorsShown(forContentOffsetChanges changes: () -> Void) -> Self {
        self.view.withScrollIndicatorsShown(forContentOffsetChanges: changes)
        return self
    }
    
    @discardableResult public func delaysContentTouches(_ value: Bool) -> Self {
        self.view.delaysContentTouches = value
        return self
    }
    
    @discardableResult public func canCancelContentTouches(_ value: Bool) -> Self {
        self.view.canCancelContentTouches = value
        return self
    }
    
    @discardableResult public func minimumZoomScale(_ value: CGFloat) -> Self {
        self.view.minimumZoomScale = value
        return self
    }
    
    @discardableResult public func maximumZoomScale(_ value: CGFloat) -> Self {
        self.view.maximumZoomScale = value
        return self
    }
    
    @available(iOS 3.0, *)
    @discardableResult public func zoomScale(_ value: CGFloat) -> Self {
        self.view.zoomScale = value
        return self
    }
    
    @available(iOS 3.0, *)
    @discardableResult public func setZoomScale(_ scale: CGFloat, animated: Bool) -> Self {
        self.view.setZoomScale(scale, animated: animated)
        return self
    }
    
    @available(iOS 3.0, *)
    @discardableResult public func zoom(to rect: CGRect, animated: Bool) -> Self {
        self.view.zoom(to: rect, animated: animated)
        return self
    }
    
    @discardableResult public func bouncesZoom(_ value: Bool) -> Self {
        self.view.bouncesZoom = value
        return self
    }
    
    @discardableResult public func scrollsToTop(_ value: Bool) -> Self {
        self.view.scrollsToTop = value
        return self
    }
    
    @available(iOS 17.4, *)
    @discardableResult public func stopScrollingAndZooming() -> Self {
        self.view.stopScrollingAndZooming()
        return self
    }
    
    @available(iOS 7.0, *)
    @discardableResult public func keyboardDismissMode(_ value: UIScrollView.KeyboardDismissMode) -> Self {
        self.view.keyboardDismissMode = value
        return self
    }
    
    @available(iOS 10.0, *)
    @discardableResult public func refreshControl(_ value: UIRefreshControl?) -> Self {
        self.view.refreshControl = value
        return self
    }
    
    @available(iOS 17.0, *)
    @discardableResult public func allowsKeyboardScrolling(_ value: Bool) -> Self {
        self.view.allowsKeyboardScrolling = value
        return self
    }
}
