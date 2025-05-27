//
//  MMTableViewChain.swift
//  MMSwiftUIKit
//
//  Created by 小君夜麻吕 on 2025/5/27.
//

import UIKit

public class MMTableViewChain<T>: MMScrollViewChain<T> where T: UITableView {
    
    @discardableResult public func dataSource(_ value: (any UITableViewDataSource)?) -> Self {
        self.view.dataSource = value
        return self
    }
    
    @discardableResult public func delegate(_ value: (any UITableViewDelegate)?) -> Self {
        self.view.delegate = value
        return self
    }
    
    @available(iOS 10.0, *)
    @discardableResult public func prefetchDataSource(_ value: (any UITableViewDataSourcePrefetching)?) -> Self {
        self.view.prefetchDataSource = value
        return self
    }
    
    @available(iOS 15.0, *)
    @discardableResult public func isPrefetchingEnabled(_ value: Bool) -> Self {
        self.view.isPrefetchingEnabled = value
        return self
    }
    
    @available(iOS 11.0, *)
    @discardableResult public func dragDelegate(_ value: (any UITableViewDragDelegate)?) -> Self {
        self.view.dragDelegate = value
        return self
    }
    
    @available(iOS 11.0, *)
    @discardableResult public func dropDelegate(_ value: (any UITableViewDropDelegate)?) -> Self {
        self.view.dropDelegate = value
        return self
    }
    
    @discardableResult public func rowHeight(_ value: CGFloat) -> Self {
        self.view.rowHeight = value
        return self
    }
    
    @discardableResult public func sectionHeaderHeight(_ value: CGFloat) -> Self {
        self.view.sectionHeaderHeight = value
        return self
    }
    
    @discardableResult public func sectionFooterHeight(_ value: CGFloat) -> Self {
        self.view.sectionFooterHeight = value
        return self
    }
    
    @available(iOS 7.0, *)
    @discardableResult public func estimatedRowHeight(_ value: CGFloat) -> Self {
        self.view.estimatedRowHeight = value
        return self
    }
    
    @available(iOS 7.0, *)
    @discardableResult public func estimatedSectionHeaderHeight(_ value: CGFloat) -> Self {
        self.view.estimatedSectionHeaderHeight = value
        return self
    }
    
    @available(iOS 7.0, *)
    @discardableResult public func estimatedSectionFooterHeight(_ value: CGFloat) -> Self {
        self.view.estimatedSectionFooterHeight = value
        return self
    }
    
    @available(iOS 15.0, *)
    @discardableResult public func fillerRowHeight(_ value: CGFloat) -> Self {
        self.view.fillerRowHeight = value
        return self
    }
    
    @available(iOS 15.0, *)
    @discardableResult public func sectionHeaderTopPadding(_ value: CGFloat) -> Self {
        self.view.sectionHeaderTopPadding = value
        return self
    }
    
    @available(iOS 7.0, *)
    @discardableResult public func separatorInset(_ value: UIEdgeInsets) -> Self {
        self.view.separatorInset = value
        return self
    }
    
    @available(iOS 11.0, *)
    @discardableResult public func separatorInsetReference(_ value: UITableView.SeparatorInsetReference) -> Self {
        self.view.separatorInsetReference = value
        return self
    }
    
    @available(iOS 16.0, *)
    @discardableResult public func selfSizingInvalidation(_ value: UITableView.SelfSizingInvalidation) -> Self {
        self.view.selfSizingInvalidation = value
        return self
    }
    
    @available(iOS 3.2, *)
    @discardableResult public func backgroundView(_ value: UIView?) -> Self {
        self.view.backgroundView = value
        return self
    }
    
    @discardableResult public func isEditing(_ value: Bool) -> Self {
        self.view.isEditing = value
        return self
    }
    
    @available(iOS 3.0, *)
    @discardableResult public func allowsSelection(_ value: Bool) -> Self {
        self.view.allowsSelection = value
        return self
    }
    
    @discardableResult public func allowsSelectionDuringEditing(_ value: Bool) -> Self {
        self.view.allowsSelectionDuringEditing = value
        return self
    }
    
    @available(iOS 5.0, *)
    @discardableResult public func allowsMultipleSelection(_ value: Bool) -> Self {
        self.view.allowsMultipleSelection = value
        return self
    }
    
    @available(iOS 5.0, *)
    @discardableResult public func allowsMultipleSelectionDuringEditing(_ value: Bool) -> Self {
        self.view.allowsMultipleSelectionDuringEditing = value
        return self
    }
    
    @discardableResult public func sectionIndexMinimumDisplayRowCount(_ value: Int) -> Self {
        self.view.sectionIndexMinimumDisplayRowCount = value
        return self
    }
    
    @available(iOS 6.0, *)
    @discardableResult public func sectionIndexColor(_ value: UIColor?) -> Self {
        self.view.sectionIndexColor = value
        return self
    }
    
    @available(iOS 7.0, *)
    @discardableResult public func sectionIndexBackgroundColor(_ value: UIColor?) -> Self {
        self.view.sectionIndexBackgroundColor = value
        return self
    }
    
    @available(iOS 6.0, *)
    @discardableResult public func sectionIndexTrackingBackgroundColor(_ value: UIColor?) -> Self {
        self.view.sectionIndexTrackingBackgroundColor = value
        return self
    }
    
    @discardableResult public func separatorStyle(_ value: UITableViewCell.SeparatorStyle) -> Self {
        self.view.separatorStyle = value
        return self
    }
    
    @discardableResult public func separatorColor(_ value: UIColor?) -> Self {
        self.view.separatorColor = value
        return self
    }
    
    @available(iOS 8.0, *)
    @discardableResult public func separatorEffect(_ value: UIVisualEffect?) -> Self {
        self.view.separatorEffect = value
        return self
    }
    
    @available(iOS 9.0, *)
    @discardableResult public func cellLayoutMarginsFollowReadableWidth(_ value: Bool) -> Self {
        self.view.cellLayoutMarginsFollowReadableWidth = value
        return self
    }
    
    @available(iOS 11.0, *)
    @discardableResult public func insetsContentViewsToSafeArea(_ value: Bool) -> Self {
        self.view.insetsContentViewsToSafeArea = value
        return self
    }
    
    @discardableResult public func tableHeaderView(_ value: UIView?) -> Self {
        self.view.tableHeaderView = value
        return self
    }
    
    @discardableResult public func tableFooterView(_ value: UIView?) -> Self {
        self.view.tableFooterView = value
        return self
    }
    
    @available(iOS 9.0, *)
    @discardableResult public func remembersLastFocusedIndexPath(_ value: Bool) -> Self {
        self.view.remembersLastFocusedIndexPath = value
        return self
    }
    
    @available(iOS 14.0, *)
    @discardableResult public func selectionFollowsFocus(_ value: Bool) -> Self {
        self.view.selectionFollowsFocus = value
        return self
    }
    
    @available(iOS 15.0, *)
    @discardableResult public func allowsFocus(_ value: Bool) -> Self {
        self.view.allowsFocus = value
        return self
    }
    
    @available(iOS 15.0, *)
    @discardableResult public func allowsFocusDuringEditing(_ value: Bool) -> Self {
        self.view.allowsFocusDuringEditing = value
        return self
    }
    
    @available(iOS 11.0, *)
    @discardableResult public func dragInteractionEnabled(_ value: Bool) -> Self {
        self.view.dragInteractionEnabled = value
        return self
    }
    
    @available(iOS 18.0, *)
    @discardableResult public func contentHuggingElements(_ value: UITableViewContentHuggingElements) -> Self {
        self.view.contentHuggingElements = value
        return self
    }
    
    // MARK: - Methods
    
    @discardableResult public func scrollToRow(at indexPath: IndexPath, at scrollPosition: UITableView.ScrollPosition, animated: Bool) -> Self {
        self.view.scrollToRow(at: indexPath, at: scrollPosition, animated: animated)
        return self
    }
    
    @discardableResult public func scrollToNearestSelectedRow(at scrollPosition: UITableView.ScrollPosition, animated: Bool) -> Self {
        self.view.scrollToNearestSelectedRow(at: scrollPosition, animated: animated)
        return self
    }
    
    @available(iOS 11.0, *)
    @discardableResult public func performBatchUpdates(_ updates: (() -> Void)?, completion: ((Bool) -> Void)? = nil) -> Self {
        self.view.performBatchUpdates(updates, completion: completion)
        return self
    }
    
    @discardableResult public func beginUpdates() -> Self {
        self.view.beginUpdates()
        return self
    }
    
    @discardableResult public func endUpdates() -> Self {
        self.view.endUpdates()
        return self
    }
    
    @discardableResult public func insertSections(_ sections: IndexSet, with animation: UITableView.RowAnimation) -> Self {
        self.view.insertSections(sections, with: animation)
        return self
    }
    
    @discardableResult public func deleteSections(_ sections: IndexSet, with animation: UITableView.RowAnimation) -> Self {
        self.view.deleteSections(sections, with: animation)
        return self
    }
    
    @available(iOS 5.0, *)
    @discardableResult public func moveSection(_ section: Int, toSection newSection: Int) -> Self {
        self.view.moveSection(section, toSection: newSection)
        return self
    }
    
    @available(iOS 3.0, *)
    @discardableResult public func reloadSections(_ sections: IndexSet, with animation: UITableView.RowAnimation) -> Self {
        self.view.reloadSections(sections, with: animation)
        return self
    }
    
    @discardableResult public func insertRows(at indexPaths: [IndexPath], with animation: UITableView.RowAnimation) -> Self {
        self.view.insertRows(at: indexPaths, with: animation)
        return self
    }
    
    @discardableResult public func deleteRows(at indexPaths: [IndexPath], with animation: UITableView.RowAnimation) -> Self {
        self.view.deleteRows(at: indexPaths, with: animation)
        return self
    }
    
    @available(iOS 5.0, *)
    @discardableResult public func moveRow(at indexPath: IndexPath, to newIndexPath: IndexPath) -> Self {
        self.view.moveRow(at: indexPath, to: newIndexPath)
        return self
    }
    
    @available(iOS 3.0, *)
    @discardableResult public func reloadRows(at indexPaths: [IndexPath], with animation: UITableView.RowAnimation) -> Self {
        self.view.reloadRows(at: indexPaths, with: animation)
        return self
    }
    
    @available(iOS 15.0, *)
    @discardableResult public func reconfigureRows(at indexPaths: [IndexPath]) -> Self {
        self.view.reconfigureRows(at: indexPaths)
        return self
    }
    
    @discardableResult public func reloadData() -> Self {
        self.view.reloadData()
        return self
    }
    
    @available(iOS 3.0, *)
    @discardableResult public func reloadSectionIndexTitles() -> Self {
        self.view.reloadSectionIndexTitles()
        return self
    }
    
    @discardableResult public func setEditing(_ editing: Bool, animated: Bool) -> Self {
        self.view.setEditing(editing, animated: animated)
        return self
    }
    
    @discardableResult public func selectRow(at indexPath: IndexPath?, animated: Bool, scrollPosition: UITableView.ScrollPosition) -> Self {
        self.view.selectRow(at: indexPath, animated: animated, scrollPosition: scrollPosition)
        return self
    }
    
    @discardableResult public func deselectRow(at indexPath: IndexPath, animated: Bool) -> Self {
        self.view.deselectRow(at: indexPath, animated: animated)
        return self
    }
    
    @available(iOS 5.0, *)
    @discardableResult public func register(_ nib: UINib?, forCellReuseIdentifier identifier: String) -> Self {
        self.view.register(nib, forCellReuseIdentifier: identifier)
        return self
    }
    
    @available(iOS 6.0, *)
    @discardableResult public func register(_ cellClass: AnyClass?, forCellReuseIdentifier identifier: String) -> Self {
        self.view.register(cellClass, forCellReuseIdentifier: identifier)
        return self
    }
    
    @available(iOS 6.0, *)
    @discardableResult public func register(_ nib: UINib?, forHeaderFooterViewReuseIdentifier identifier: String) -> Self {
        self.view.register(nib, forHeaderFooterViewReuseIdentifier: identifier)
        return self
    }
    
    @available(iOS 6.0, *)
    @discardableResult public func register(_ aClass: AnyClass?, forHeaderFooterViewReuseIdentifier identifier: String) -> Self {
        self.view.register(aClass, forHeaderFooterViewReuseIdentifier: identifier)
        return self
    }
}
