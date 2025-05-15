//
//  MMTextViewExtension.swift
//  MMSwiftUIKit
//
//  Created by 小君夜麻吕 on 2025/5/15.
//

import Foundation
import UIKit
import RSKGrowingTextView

public extension MMTextView {
    
    @discardableResult func animateHeightChange(_ value: Bool) -> Self {
        self.animateHeightChange = value
        return self
    }
    
    @discardableResult func heightChangeAnimationDuration(_ value: Double) -> Self {
        self.heightChangeAnimationDuration = value
        return self
    }
    
    @discardableResult func heightChangeUserActionsBlock(_ value: HeightChangeUserActionsBlockType?) -> Self {
        self.heightChangeUserActionsBlock = value
        return self
    }
    
    @discardableResult func maximumNumberOfLines(_ value: Int) -> Self {
        self.maximumNumberOfLines = value
        return self
    }
    
    @discardableResult func minimumNumberOfLines(_ value: Int) -> Self {
        self.minimumNumberOfLines = value
        return self
    }
    
    @discardableResult func attributedPlaceholder(_ value: NSAttributedString?) -> Self {
        self.attributedPlaceholder = value
        return self
    }
    
    @discardableResult func growingTextViewDelegate(_ value: RSKGrowingTextViewDelegate?) -> Self {
        self.growingTextViewDelegate = value
        return self
    }
}
