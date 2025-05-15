//
//  File.swift
//  MMSwiftUIKit
//
//  Created by 小君夜麻吕 on 2025/5/15.
//

import Foundation
import UIKit

public extension UICollectionViewCell {
    
    @discardableResult func automaticallyUpdatesContentConfiguration(_ value: Bool) -> Self {
        self.automaticallyUpdatesContentConfiguration = value
        return self
    }
    
    @discardableResult func isSelected(_ value: Bool) -> Self {
        self.isSelected = value
        return self
    }
    
    @discardableResult func isHighlighted(_ value: Bool) -> Self {
        self.isHighlighted = value
        return self
    }
    
    @discardableResult func automaticallyUpdatesBackgroundConfiguration(_ value: Bool) -> Self {
        self.automaticallyUpdatesBackgroundConfiguration = value
        return self
    }
    
    @discardableResult func backgroundView(_ value: UIView?) -> Self {
        self.backgroundView = value
        return self
    }
    
    @discardableResult func selectedBackgroundView(_ value: UIView?) -> Self {
        self.selectedBackgroundView = value
        return self
    }
}
