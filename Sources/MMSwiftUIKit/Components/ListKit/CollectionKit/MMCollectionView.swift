//
//  CollectionView.swift
//  Test
//
//  Created by 小君夜麻吕 on 2025/4/1.
//

import Foundation
import UIKit
import MJRefresh

@MainActor public final class MMCollectionView: UICollectionView {
    
    public init(extensionTarget: AnyObject,
                layout: UICollectionViewLayout,
                cellClasses: [UICollectionViewCell.Type]
    ){
        self.proxy = MMCollectionViewProxy(extensionTarget: extensionTarget)
        super.init(frame: .zero, collectionViewLayout: layout)
        for cls in cellClasses {
            let reuseIdentifier = String(describing: cls)
            self.register(cls, forCellWithReuseIdentifier: reuseIdentifier)
        }
        self.mm
            .backgroundColor(.clear)
            .showsHorizontalScrollIndicator(false)
            .showsVerticalScrollIndicator(false)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public var mm: MMCollectionViewChain<MMCollectionView> { MMCollectionViewChain(view: self) }
    
    public func reload(with datas: [Any], animation: Bool = false) {
        
        if self.delegate == nil { self.delegate(self.proxy) }
        if self.dataSource == nil { self.dataSource(self.proxy)}
        
        self.proxy.reload(datas: datas)
        UIView.transition(with: self, duration: 0.25, options: animation ? .transitionCrossDissolve : .layoutSubviews, animations: {
            self.reloadData()
        })
        
        if self.mj_header != nil { self.mj_header?.endRefreshing() }
        if self.mj_footer != nil { self.mj_footer?.endRefreshing() }
    }
    
    private var proxy: MMCollectionViewProxy
    
}
