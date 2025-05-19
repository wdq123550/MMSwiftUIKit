//
//  TableView.swift
//  Test
//
//  Created by 小君夜麻吕 on 2025/4/1.
//

import Foundation
import UIKit
import MJRefresh

@MainActor public final class MMTableView: UITableView {
    
    public init(style: UITableView.Style, extensionTarget: AnyObject){
        self.proxy = MMTableProxy(extensionTarget: extensionTarget)
        super.init(frame: .zero, style: style)
        self.estimatedRowHeight(0)
            .estimatedSectionFooterHeight(0)
            .estimatedSectionHeaderHeight(0)
            .showsVerticalScrollIndicator(false)
            .showsHorizontalScrollIndicator(false)
            .sectionHeaderTopPadding(0)
            .separatorStyle(.none)
            .backgroundColor(.clear)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public func reload(with datas: [Any], animation: Bool = false) {
        
        if self.delegate == nil { self.delegate(self.proxy) }
        if self.dataSource == nil { self.dataSource(self.proxy) }
        
        self.proxy.reload(datas: datas)
        
        UIView.transition(with: self, duration: 0.25, options: animation ? .transitionCrossDissolve : .layoutSubviews, animations: {
            self.reloadData()
        })
        
        if self.mj_header != nil { self.mj_header?.endRefreshing() }
        if self.mj_footer != nil { self.mj_footer?.endRefreshing() }
    }
    
    private let proxy: MMTableProxy
}
