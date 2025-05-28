//
//  CollectionViewCell.swift
//  Test
//
//  Created by 小君夜麻吕 on 2025/4/1.
//

import Foundation
import UIKit
import Combine

open class MMCVCellVM: NSObject, MMCVCellVMProtocol {
    open var cellType: MMCVCellProtocol.Type{ MMCVCell.self }
    public var indexPath: IndexPath?
    public var cellSize: CGSize?
}

open class MMCVCell: UICollectionViewCell, MMCVCellProtocol {
    
    public var cancellabel = Set<AnyCancellable>()
    public var mm: MMCollectionViewCellChain<MMCVCell> { MMCollectionViewCellChain(view: self) }
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .clear
        let tapGes = UITapGestureRecognizer()
        tapGes.publisher.sink { [unowned self] tapGes in
            self.onClickContentView()
        }.store(in: &cancellabel)
        self.contentView.addGestureRecognizer(tapGes)
    }
    required public init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    open func onClickContentView() {}
    
    open func reset(with cellVM: MMCVCellVMProtocol, indexPath: IndexPath) {
        self._viewModel = cellVM as? MMCVCellVM
        self._viewModel?.indexPath = indexPath
    }
    
    @discardableResult open class func cellSize(with cellVM: MMCVCellVMProtocol, indexPath: IndexPath) -> CGSize {
        cellVM.indexPath = indexPath
        return cellVM.cellSize ?? .zero
    }
    
    public var _viewModel: MMCVCellVM?
}
