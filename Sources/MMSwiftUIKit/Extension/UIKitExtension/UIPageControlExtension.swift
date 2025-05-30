//
//  UIPageControlExtension.swift
//  MMSwiftUIKit
//
//  Created by 小君夜麻吕 on 2025/5/23.
//

import Foundation
import UIKit

public extension UIPageControl {
    
    @discardableResult func numberOfPages(_ value: Int) -> Self {
        self.numberOfPages = value
        return self
    }
    
    @discardableResult func currentPage(_ value: Int) -> Self {
        self.currentPage = value
        return self
    }
    
    @discardableResult func hidesForSinglePage(_ value: Bool) -> Self {
        self.hidesForSinglePage = value
        return self
    }
    
    @available(iOS 17.0, *)
    @discardableResult func progress(_ value: UIPageControlProgress) -> Self {
        self.progress = value
        return self
    }
    
    @discardableResult func pageIndicatorTintColor(_ value: UIColor) -> Self {
        self.pageIndicatorTintColor = value
        return self
    }
    
    @discardableResult func currentPageIndicatorTintColor(_ value: UIColor) -> Self {
        self.currentPageIndicatorTintColor = value
        return self
    }
    
    @discardableResult func backgroundStyle(_ value: UIPageControl.BackgroundStyle) -> Self {
        self.backgroundStyle = value
        return self
    }
    
    @available(iOS 16.0, *)
    @discardableResult func direction(_ value: UIPageControl.Direction) -> Self {
        self.direction = value
        return self
    }
    
    @discardableResult func allowsContinuousInteraction(_ value: Bool) -> Self {
        self.allowsContinuousInteraction = value
        return self
    }
    
    @discardableResult func preferredIndicatorImage(_ value: UIImage?) -> Self {
        self.preferredIndicatorImage = value
        return self
    }
    
    @available(iOS 16.0, *)
    @discardableResult func preferredCurrentPageIndicatorImage(_ value: UIImage?) -> Self {
        self.preferredCurrentPageIndicatorImage = value
        return self
    }
}
