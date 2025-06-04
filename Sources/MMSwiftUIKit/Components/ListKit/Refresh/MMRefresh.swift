//
//  File.swift
//  MMSwiftUIKit
//
//  Created by 小君夜麻吕 on 2025/6/4.
//

import Foundation
import MJRefresh

open class MMClearRefreshFooter: MJRefreshAutoFooter {

    public init(refreshingClosure: @escaping MJRefreshComponentAction) {
        super.init(frame: .zero)
        self.refreshingBlock = refreshingClosure
    }
    
    required public init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}

open class MMClearRefreshHeader: MJRefreshNormalHeader {

    public init(refreshingClosure: @escaping MJRefreshComponentAction) {
        super.init(frame: .zero)
        self.refreshingBlock = refreshingClosure
        self.stateLabel?.isHidden = true
        self.lastUpdatedTimeLabel?.isHidden = true
        self.labelLeftInset = 0
    }
    
    required public init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
