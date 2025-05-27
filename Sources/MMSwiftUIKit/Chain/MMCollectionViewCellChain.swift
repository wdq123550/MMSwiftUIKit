//
//  MMCollectionViewCellChain.swift
//  MMSwiftUIKit
//
//  Created by 小君夜麻吕 on 2025/5/27.
//

import UIKit

public class MMCollectionViewCellChain<T>: MMCollectionReusableViewChain<T> where T: UICollectionViewCell {
    
    @available(iOS 14.0, *)
    @discardableResult public func setNeedsUpdateConfiguration() -> Self {
        self.view.setNeedsUpdateConfiguration()
        return self
    }
    
    @available(iOS 14.0, *)
    @discardableResult public func automaticallyUpdatesContentConfiguration(_ value: Bool) -> Self {
        self.view.automaticallyUpdatesContentConfiguration = value
        return self
    }
    
    @discardableResult public func isSelected(_ value: Bool) -> Self {
        self.view.isSelected = value
        return self
    }
    
    @discardableResult public func isHighlighted(_ value: Bool) -> Self {
        self.view.isHighlighted = value
        return self
    }
    
    @available(iOS 11.0, *)
    @discardableResult public func dragStateDidChange(_ dragState: UICollectionViewCell.DragState) -> Self {
        self.view.dragStateDidChange(dragState)
        return self
    }
    
    @available(iOS 14.0, *)
    @discardableResult public func automaticallyUpdatesBackgroundConfiguration(_ value: Bool) -> Self {
        self.view.automaticallyUpdatesBackgroundConfiguration = value
        return self
    }
    
    @discardableResult public func backgroundView(_ value: UIView?) -> Self {
        self.view.backgroundView = value
        return self
    }
    
    @discardableResult public func selectedBackgroundView(_ value: UIView?) -> Self {
        self.view.selectedBackgroundView = value
        return self
    }
    
    @available(iOS 14.0, *)
    @discardableResult public func contentConfiguration(_ value: (any UIContentConfiguration)?) -> Self {
        self.view.contentConfiguration = value
        return self
    }
    
    @available(iOS 14.0, *)
    @discardableResult public func backgroundConfiguration(_ value: UIBackgroundConfiguration?) -> Self {
        self.view.backgroundConfiguration = value
        return self
    }
    
    @available(iOS 15.0, *)
    @discardableResult public func configurationUpdateHandler(_ value: UICollectionViewCell.ConfigurationUpdateHandler?) -> Self {
        self.view.configurationUpdateHandler = value
        return self
    }
}
