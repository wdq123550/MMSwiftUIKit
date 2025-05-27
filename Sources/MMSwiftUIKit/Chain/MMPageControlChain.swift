//
//  MMPageControlChain.swift
//  MMSwiftUIKit
//
//  Created by 小君夜麻吕 on 2025/5/27.
//

import UIKit

public class MMPageControlChain<T>: MMControlChain<T> where T: UIPageControl {
    
    @discardableResult public func numberOfPages(_ value: Int) -> Self {
        self.view.numberOfPages = value
        return self
    }
    
    @discardableResult public func currentPage(_ value: Int) -> Self {
        self.view.currentPage = value
        return self
    }
    
    @discardableResult public func hidesForSinglePage(_ value: Bool) -> Self {
        self.view.hidesForSinglePage = value
        return self
    }
    
    @available(iOS 17.0, *)
    @discardableResult public func progress(_ value: UIPageControlProgress?) -> Self {
        self.view.progress = value
        return self
    }
    
    @available(iOS 6.0, *)
    @discardableResult public func pageIndicatorTintColor(_ value: UIColor?) -> Self {
        self.view.pageIndicatorTintColor = value
        return self
    }
    
    @available(iOS 6.0, *)
    @discardableResult public func currentPageIndicatorTintColor(_ value: UIColor?) -> Self {
        self.view.currentPageIndicatorTintColor = value
        return self
    }
    
    @available(iOS 14.0, *)
    @discardableResult public func backgroundStyle(_ value: UIPageControl.BackgroundStyle) -> Self {
        self.view.backgroundStyle = value
        return self
    }
    
    @available(iOS 16.0, *)
    @discardableResult public func direction(_ value: UIPageControl.Direction) -> Self {
        self.view.direction = value
        return self
    }
    
    @available(iOS 14.0, *)
    @discardableResult public func allowsContinuousInteraction(_ value: Bool) -> Self {
        self.view.allowsContinuousInteraction = value
        return self
    }
    
    @available(iOS 14.0, *)
    @discardableResult public func preferredIndicatorImage(_ value: UIImage?) -> Self {
        self.view.preferredIndicatorImage = value
        return self
    }
    
    @available(iOS 14.0, *)
    @discardableResult public func setIndicatorImage(_ image: UIImage?, forPage page: Int) -> Self {
        self.view.setIndicatorImage(image, forPage: page)
        return self
    }
    
    @available(iOS 16.0, *)
    @discardableResult public func preferredCurrentPageIndicatorImage(_ value: UIImage?) -> Self {
        self.view.preferredCurrentPageIndicatorImage = value
        return self
    }
    
    @available(iOS 16.0, *)
    @discardableResult public func setCurrentPageIndicatorImage(_ image: UIImage?, forPage page: Int) -> Self {
        self.view.setCurrentPageIndicatorImage(image, forPage: page)
        return self
    }
    
    @available(iOS, introduced: 2.0, deprecated: 14.0, message: "defersCurrentPageDisplay no longer does anything reasonable with the new interaction mode.")
    @discardableResult public func defersCurrentPageDisplay(_ value: Bool) -> Self {
        self.view.defersCurrentPageDisplay = value
        return self
    }
    
    @available(iOS, introduced: 2.0, deprecated: 14.0, message: "updateCurrentPageDisplay no longer does anything reasonable with the new interaction mode.")
    @discardableResult public func updateCurrentPageDisplay() -> Self {
        self.view.updateCurrentPageDisplay()
        return self
    }
}
