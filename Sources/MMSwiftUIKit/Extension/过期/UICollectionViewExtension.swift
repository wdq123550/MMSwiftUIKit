////
////  File.swift
////  MMSwiftUIKit
////
////  Created by 小君夜麻吕 on 2025/5/13.
////
//
//import Foundation
//import UIKit
//
//public extension UICollectionView {
//    
//    @discardableResult func collectionViewLayout(_ value: UICollectionViewLayout) -> Self {
//        self.collectionViewLayout = value
//        return self
//    }
//    
//    @discardableResult func delegate(_ value: (any UICollectionViewDelegate)?) -> Self {
//        self.delegate = value
//        return self
//    }
//    
//    @discardableResult func dataSource(_ value: (any UICollectionViewDataSource)?) -> Self {
//        self.dataSource = value
//        return self
//    }
//    
//    @discardableResult func prefetchDataSource(_ value: (any UICollectionViewDataSourcePrefetching)?) -> Self {
//        self.prefetchDataSource = value
//        return self
//    }
//    
//    @discardableResult func isPrefetchingEnabled(_ value: Bool) -> Self {
//        self.isPrefetchingEnabled = value
//        return self
//    }
//    
//    @discardableResult func dragDelegate(_ value: (any UICollectionViewDragDelegate)?) -> Self {
//        self.dragDelegate = value
//        return self
//    }
//    
//    @discardableResult func dropDelegate(_ value: (any UICollectionViewDropDelegate)?) -> Self {
//        self.dropDelegate = value
//        return self
//    }
//    
//    @discardableResult func dragInteractionEnabled(_ value: Bool) -> Self {
//        self.dragInteractionEnabled = value
//        return self
//    }
//    
//    @discardableResult func reorderingCadence(_ value: UICollectionView.ReorderingCadence) -> Self {
//        self.reorderingCadence = value
//        return self
//    }
//    
//    @available(iOS 16.0, *)
//    @discardableResult func selfSizingInvalidation(_ value: UICollectionView.SelfSizingInvalidation) -> Self {
//        self.selfSizingInvalidation = value
//        return self
//    }
//    
//    @discardableResult func backgroundView(_ value: UIView?) -> Self {
//        self.backgroundView = value
//        return self
//    }
//    
//    @discardableResult func allowsSelection(_ value: Bool) -> Self {
//        self.allowsSelection = value
//        return self
//    }
//    
//    @discardableResult func allowsMultipleSelection(_ value: Bool) -> Self {
//        self.allowsMultipleSelection = value
//        return self
//    }
//    
//    @discardableResult func remembersLastFocusedIndexPath(_ value: Bool) -> Self {
//        self.remembersLastFocusedIndexPath = value
//        return self
//    }
//    
//    @discardableResult func selectionFollowsFocus(_ value: Bool) -> Self {
//        self.selectionFollowsFocus = value
//        return self
//    }
//    
//    @discardableResult func allowsFocus(_ value: Bool) -> Self {
//        self.allowsFocus = value
//        return self
//    }
//    
//    @discardableResult func allowsFocusDuringEditing(_ value: Bool) -> Self {
//        self.allowsFocusDuringEditing = value
//        return self
//    }
//    
//    @discardableResult func isEditing(_ value: Bool) -> Self {
//        self.isEditing = value
//        return self
//    }
//    
//    @discardableResult func allowsSelectionDuringEditing(_ value: Bool) -> Self {
//        self.allowsSelectionDuringEditing = value
//        return self
//    }
//    
//    @discardableResult func allowsMultipleSelectionDuringEditing(_ value: Bool) -> Self {
//        self.allowsMultipleSelectionDuringEditing = value
//        return self
//    }
//}
