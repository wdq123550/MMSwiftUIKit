//
//  UITableViewExtension.swift
//  MMSwiftUIKit
//
//  Created by 小君夜麻吕 on 2025/5/13.
//

import Foundation
import UIKit

public extension UITableView {
    
    @discardableResult func dataSource(_ value: (any UITableViewDataSource)?) -> Self {
        self.dataSource = value
        return self
    }
    
    @discardableResult func delegate(_ value: (any UITableViewDelegate)?) -> Self {
        self.delegate = value
        return self
    }
    
    @discardableResult func prefetchDataSource(_ value: (any UITableViewDataSourcePrefetching)?) -> Self {
        self.prefetchDataSource = value
        return self
    }
    
    @discardableResult func isPrefetchingEnabled(_ value: Bool) -> Self {
        self.isPrefetchingEnabled = value
        return self
    }
    
    @discardableResult func dragDelegate(_ value: (any UITableViewDragDelegate)?) -> Self {
        self.dragDelegate = value
        return self
    }
    
    @discardableResult func dropDelegate(_ value: (any UITableViewDropDelegate)?) -> Self {
        self.dropDelegate = value
        return self
    }
    
    @discardableResult func rowHeight(_ value: CGFloat) -> Self {
        self.rowHeight = value
        return self
    }
    
    @discardableResult func sectionHeaderHeight(_ value: CGFloat) -> Self {
        self.sectionHeaderHeight = value
        return self
    }
    
    @discardableResult func sectionFooterHeight(_ value: CGFloat) -> Self {
        self.sectionFooterHeight = value
        return self
    }
    
    @discardableResult func estimatedRowHeight(_ value: CGFloat) -> Self {
        self.estimatedRowHeight = value
        return self
    }
    
    @discardableResult func estimatedSectionHeaderHeight(_ value: CGFloat) -> Self {
        self.estimatedSectionHeaderHeight = value
        return self
    }
    
    @discardableResult func estimatedSectionFooterHeight(_ value: CGFloat) -> Self {
        self.estimatedSectionFooterHeight = value
        return self
    }
    
    @discardableResult func fillerRowHeight(_ value: CGFloat) -> Self {
        self.fillerRowHeight = value
        return self
    }
    
    @discardableResult func sectionHeaderTopPadding(_ value: CGFloat) -> Self {
        self.sectionHeaderTopPadding = value
        return self
    }
    
    @discardableResult func separatorInset(_ value: UIEdgeInsets) -> Self {
        self.separatorInset = value
        return self
    }
    
    @discardableResult func separatorInsetReference(_ value: UITableView.SeparatorInsetReference) -> Self {
        self.separatorInsetReference = value
        return self
    }
    
    @available(iOS 16.0, *)
    @discardableResult func selfSizingInvalidation(_ value: UITableView.SelfSizingInvalidation) -> Self {
        self.selfSizingInvalidation = value
        return self
    }
    
    @discardableResult func backgroundView(_ value: UIView?) -> Self {
        self.backgroundView = value
        return self
    }
    
    @discardableResult func isEditing(_ value: Bool) -> Self {
        self.isEditing = value
        return self
    }
    
    @discardableResult func allowsSelection(_ value: Bool) -> Self {
        self.allowsSelection = value
        return self
    }
    
    @discardableResult func allowsSelectionDuringEditing(_ value: Bool) -> Self {
        self.allowsSelectionDuringEditing = value
        return self
    }
    
    @discardableResult func allowsMultipleSelection(_ value: Bool) -> Self {
        self.allowsMultipleSelection = value
        return self
    }
    
    @discardableResult func allowsMultipleSelectionDuringEditing(_ value: Bool) -> Self {
        self.allowsMultipleSelectionDuringEditing = value
        return self
    }
    
    @discardableResult func sectionIndexMinimumDisplayRowCount(_ value: Int) -> Self {
        self.sectionIndexMinimumDisplayRowCount = value
        return self
    }
    
    @discardableResult func sectionIndexColor(_ value: UIColor?) -> Self {
        self.sectionIndexColor = value
        return self
    }
    
    @discardableResult func sectionIndexBackgroundColor(_ value: UIColor?) -> Self {
        self.sectionIndexBackgroundColor = value
        return self
    }
    
    @discardableResult func sectionIndexTrackingBackgroundColor(_ value: UIColor?) -> Self {
        self.sectionIndexTrackingBackgroundColor = value
        return self
    }
    
    @discardableResult func separatorStyle(_ value: UITableViewCell.SeparatorStyle) -> Self {
        self.separatorStyle = value
        return self
    }
    
    @discardableResult func separatorColor(_ value: UIColor?) -> Self {
        self.separatorColor = value
        return self
    }
    
    @discardableResult func separatorEffect(_ value: UIVisualEffect?) -> Self {
        self.separatorEffect = value
        return self
    }
    
    @discardableResult func cellLayoutMarginsFollowReadableWidth(_ value: Bool) -> Self {
        self.cellLayoutMarginsFollowReadableWidth = value
        return self
    }
    
    @discardableResult func insetsContentViewsToSafeArea(_ value: Bool) -> Self {
        self.insetsContentViewsToSafeArea = value
        return self
    }
    
    @discardableResult func tableHeaderView(_ value: UIView?) -> Self {
        self.tableHeaderView = value
        return self
    }
    
    @discardableResult func tableFooterView(_ value: UIView?) -> Self {
        self.tableFooterView = value
        return self
    }
    
    @discardableResult func remembersLastFocusedIndexPath(_ value: Bool) -> Self {
        self.remembersLastFocusedIndexPath = value
        return self
    }
    
    @discardableResult func selectionFollowsFocus(_ value: Bool) -> Self {
        self.selectionFollowsFocus = value
        return self
    }
    
    @discardableResult func allowsFocus(_ value: Bool) -> Self {
        self.allowsFocus = value
        return self
    }
    
    @discardableResult func allowsFocusDuringEditing(_ value: Bool) -> Self {
        self.allowsFocusDuringEditing = value
        return self
    }
    
    @discardableResult func dragInteractionEnabled(_ value: Bool) -> Self {
        self.dragInteractionEnabled = value
        return self
    }
    
    @available(iOS 18.0, *)
    @discardableResult func contentHuggingElements(_ value: UITableViewContentHuggingElements) -> Self {
        self.contentHuggingElements = value
        return self
    }
}
