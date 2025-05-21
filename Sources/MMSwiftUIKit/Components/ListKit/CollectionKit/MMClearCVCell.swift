//
//  ClearCVCell.swift
//  Test
//
//  Created by 小君夜麻吕 on 2025/4/1.
//

import Foundation
import UIKit

public final class MMClearCVCellVM: MMCVCellVM {
    public override var cellType: MMCVCellProtocol.Type{ MMClearCVCell.self }
    public var bgColor: UIColor = .clear
    public init(bgColor: UIColor) { self.bgColor = bgColor }
}

public final class MMClearCVCell: MMCVCell {
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    @MainActor required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public override func reset(with cellVM: MMCVCellVMProtocol, indexPath: IndexPath) {
        super.reset(with: cellVM, indexPath: indexPath)
        self.backgroundColor = self.viewModel.bgColor
    }
    @discardableResult public override class func cellSize(with cellVM: MMCVCellVMProtocol, indexPath: IndexPath) -> CGSize {
        super.cellSize(with: cellVM, indexPath: indexPath)
    }
    
    private var viewModel: MMClearCVCellVM{
        set{ _viewModel = newValue }
        get{ _viewModel as! MMClearCVCellVM }
    }
}
