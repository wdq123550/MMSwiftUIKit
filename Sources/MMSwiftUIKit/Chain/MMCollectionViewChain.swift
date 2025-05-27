//
//  MMCollectionViewChain.swift
//  MMSwiftUIKit
//
//  Created by 小君夜麻吕 on 2025/5/27.
//

import UIKit

public class MMCollectionViewChain<T>: MMScrollViewChain<T> where T: UICollectionView {
    
    @discardableResult public func collectionViewLayout(_ value: UICollectionViewLayout) -> Self {
        self.view.collectionViewLayout = value
        return self
    }
    
    @discardableResult public func delegate(_ value: (any UICollectionViewDelegate)?) -> Self {
        self.view.delegate = value
        return self
    }
    
    @discardableResult public func dataSource(_ value: (any UICollectionViewDataSource)?) -> Self {
        self.view.dataSource = value
        return self
    }
    
    @available(iOS 10.0, *)
    @discardableResult public func prefetchDataSource(_ value: (any UICollectionViewDataSourcePrefetching)?) -> Self {
        self.view.prefetchDataSource = value
        return self
    }
    
    @available(iOS 10.0, *)
    @discardableResult public func isPrefetchingEnabled(_ value: Bool) -> Self {
        self.view.isPrefetchingEnabled = value
        return self
    }
    
    @available(iOS 11.0, *)
    @discardableResult public func dragDelegate(_ value: (any UICollectionViewDragDelegate)?) -> Self {
        self.view.dragDelegate = value
        return self
    }
    
    @available(iOS 11.0, *)
    @discardableResult public func dropDelegate(_ value: (any UICollectionViewDropDelegate)?) -> Self {
        self.view.dropDelegate = value
        return self
    }
    
    @available(iOS 11.0, *)
    @discardableResult public func dragInteractionEnabled(_ value: Bool) -> Self {
        self.view.dragInteractionEnabled = value
        return self
    }
    
    @available(iOS 11.0, *)
    @discardableResult public func reorderingCadence(_ value: UICollectionView.ReorderingCadence) -> Self {
        self.view.reorderingCadence = value
        return self
    }
    
    @available(iOS 16.0, *)
    @discardableResult public func selfSizingInvalidation(_ value: UICollectionView.SelfSizingInvalidation) -> Self {
        self.view.selfSizingInvalidation = value
        return self
    }
    
    @discardableResult public func backgroundView(_ value: UIView?) -> Self {
        self.view.backgroundView = value
        return self
    }
    
    @discardableResult public func allowsSelection(_ value: Bool) -> Self {
        self.view.allowsSelection = value
        return self
    }
    
    @discardableResult public func allowsMultipleSelection(_ value: Bool) -> Self {
        self.view.allowsMultipleSelection = value
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
    
    @available(iOS 14.0, *)
    @discardableResult public func isEditing(_ value: Bool) -> Self {
        self.view.isEditing = value
        return self
    }
    
    @available(iOS 14.0, *)
    @discardableResult public func allowsSelectionDuringEditing(_ value: Bool) -> Self {
        self.view.allowsSelectionDuringEditing = value
        return self
    }
    
    @available(iOS 14.0, *)
    @discardableResult public func allowsMultipleSelectionDuringEditing(_ value: Bool) -> Self {
        self.view.allowsMultipleSelectionDuringEditing = value
        return self
    }
    
    // MARK: - Methods
    
    @discardableResult public func register(_ cellClass: AnyClass?, forCellWithReuseIdentifier identifier: String) -> Self {
        self.view.register(cellClass, forCellWithReuseIdentifier: identifier)
        return self
    }
    
    @discardableResult public func register(_ nib: UINib?, forCellWithReuseIdentifier identifier: String) -> Self {
        self.view.register(nib, forCellWithReuseIdentifier: identifier)
        return self
    }
    
    @discardableResult public func register(_ viewClass: AnyClass?, forSupplementaryViewOfKind elementKind: String, withReuseIdentifier identifier: String) -> Self {
        self.view.register(viewClass, forSupplementaryViewOfKind: elementKind, withReuseIdentifier: identifier)
        return self
    }
    
    @discardableResult public func register(_ nib: UINib?, forSupplementaryViewOfKind kind: String, withReuseIdentifier identifier: String) -> Self {
        self.view.register(nib, forSupplementaryViewOfKind: kind, withReuseIdentifier: identifier)
        return self
    }
    
    @discardableResult public func selectItem(at indexPath: IndexPath?, animated: Bool, scrollPosition: UICollectionView.ScrollPosition) -> Self {
        self.view.selectItem(at: indexPath, animated: animated, scrollPosition: scrollPosition)
        return self
    }
    
    @discardableResult public func deselectItem(at indexPath: IndexPath, animated: Bool) -> Self {
        self.view.deselectItem(at: indexPath, animated: animated)
        return self
    }
    
    @discardableResult public func reloadData() -> Self {
        self.view.reloadData()
        return self
    }
    
    @discardableResult public func setCollectionViewLayout(_ layout: UICollectionViewLayout, animated: Bool) -> Self {
        self.view.setCollectionViewLayout(layout, animated: animated)
        return self
    }
    
    @available(iOS 7.0, *)
    @discardableResult public func setCollectionViewLayout(_ layout: UICollectionViewLayout, animated: Bool, completion: ((Bool) -> Void)? = nil) -> Self {
        self.view.setCollectionViewLayout(layout, animated: animated, completion: completion)
        return self
    }
    
    @available(iOS 7.0, *)
    @discardableResult public func finishInteractiveTransition() -> Self {
        self.view.finishInteractiveTransition()
        return self
    }
    
    @available(iOS 7.0, *)
    @discardableResult public func cancelInteractiveTransition() -> Self {
        self.view.cancelInteractiveTransition()
        return self
    }
    
    @discardableResult public func scrollToItem(at indexPath: IndexPath, at scrollPosition: UICollectionView.ScrollPosition, animated: Bool) -> Self {
        self.view.scrollToItem(at: indexPath, at: scrollPosition, animated: animated)
        return self
    }
    
    @discardableResult public func insertSections(_ sections: IndexSet) -> Self {
        self.view.insertSections(sections)
        return self
    }
    
    @discardableResult public func deleteSections(_ sections: IndexSet) -> Self {
        self.view.deleteSections(sections)
        return self
    }
    
    @discardableResult public func moveSection(_ section: Int, toSection newSection: Int) -> Self {
        self.view.moveSection(section, toSection: newSection)
        return self
    }
    
    @discardableResult public func reloadSections(_ sections: IndexSet) -> Self {
        self.view.reloadSections(sections)
        return self
    }
    
    @discardableResult public func insertItems(at indexPaths: [IndexPath]) -> Self {
        self.view.insertItems(at: indexPaths)
        return self
    }
    
    @discardableResult public func deleteItems(at indexPaths: [IndexPath]) -> Self {
        self.view.deleteItems(at: indexPaths)
        return self
    }
    
    @discardableResult public func moveItem(at indexPath: IndexPath, to newIndexPath: IndexPath) -> Self {
        self.view.moveItem(at: indexPath, to: newIndexPath)
        return self
    }
    
    @discardableResult public func reloadItems(at indexPaths: [IndexPath]) -> Self {
        self.view.reloadItems(at: indexPaths)
        return self
    }
    
    @available(iOS 15.0, *)
    @discardableResult public func reconfigureItems(at indexPaths: [IndexPath]) -> Self {
        self.view.reconfigureItems(at: indexPaths)
        return self
    }
    
    @discardableResult public func performBatchUpdates(_ updates: (() -> Void)?, completion: ((Bool) -> Void)? = nil) -> Self {
        self.view.performBatchUpdates(updates, completion: completion)
        return self
    }
    
    @available(iOS 9.0, *)
    @discardableResult public func updateInteractiveMovementTargetPosition(_ targetPosition: CGPoint) -> Self {
        self.view.updateInteractiveMovementTargetPosition(targetPosition)
        return self
    }
    
    @available(iOS 9.0, *)
    @discardableResult public func endInteractiveMovement() -> Self {
        self.view.endInteractiveMovement()
        return self
    }
    
    @available(iOS 9.0, *)
    @discardableResult public func cancelInteractiveMovement() -> Self {
        self.view.cancelInteractiveMovement()
        return self
    }
}
