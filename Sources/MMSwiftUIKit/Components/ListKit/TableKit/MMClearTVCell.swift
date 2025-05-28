//
//  ClearTVCell.swift
//  Test
//
//  Created by 小君夜麻吕 on 2025/4/1.
//

import Foundation
import UIKit

public final class MMClearTVCellVM: MMTVCellVM {
    public override var cellType: MMTVCellProtocol.Type{ MMClearTVCell.self }
    
    public var bgColor: UIColor = .clear
    
    public init(bgColor: UIColor) {
        self.bgColor = bgColor
        super.init()
    }
}

public final class MMClearTVCell: MMTVCell {
    
    required init(reuserID: String) {
        super.init(reuserID: reuserID)
    }
    
    @MainActor required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public override func reset(with cellVM: MMTVCellVMProtocol, indexPath: IndexPath) {
        super.reset(with: cellVM, indexPath: indexPath)
        self.backgroundColor = self.viewModel.bgColor
    }
    @discardableResult public override class func cellHeight(with cellVM: MMTVCellVMProtocol, indexPath: IndexPath) -> CGFloat {
        super.cellHeight(with: cellVM, indexPath: indexPath)
        return cellVM.cellHeight ?? 0
    }
    
    public var viewModel: MMClearTVCellVM {
        set { self._viewModel = newValue }
        get { self._viewModel as! MMClearTVCellVM }
    }
}
