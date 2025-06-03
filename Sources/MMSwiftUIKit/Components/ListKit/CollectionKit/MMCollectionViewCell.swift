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
    
    public let clickSubject = PassthroughSubject<Void, Never>()
    public var cancellable = Set<AnyCancellable>()
    
    fileprivate let updateCellSubject = PassthroughSubject<Void, Never>()
    fileprivate var isConfigUpdateAction = false
    public func updateCell() { self.updateCellSubject.send() }
}

open class MMCVCell: UICollectionViewCell, MMCVCellProtocol {
    
    public var cancellabel = Set<AnyCancellable>()
    public var mm: MMCollectionViewCellChain<MMCVCell> { MMCollectionViewCellChain(view: self) }
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .clear
        self.bind()
    }
    
    private func bind() {
        //点击事件
        let tapGes = UITapGestureRecognizer()
        self.contentView.addGestureRecognizer(tapGes)
        tapGes.publisher.sink { [unowned self] tapGes in
            self.onClickContentView()
        }.store(in: &cancellabel)
    }
    
    required public init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    open func onClickContentView() {}
    
    open func reset(with cellVM: MMCVCellVMProtocol, indexPath: IndexPath) {
        self._viewModel = cellVM as? MMCVCellVM
        self._viewModel?.indexPath = indexPath
        
        if self._viewModel?.isConfigUpdateAction == false {
            if let viewModel = self._viewModel, let indexPath = viewModel.indexPath {
                viewModel.updateCellSubject.sink { [unowned viewModel, self] _ in
                    self.reset(with: viewModel, indexPath: indexPath)
                }.store(in: &cancellabel)
                viewModel.isConfigUpdateAction = true
            }
        }
    }
    
    @discardableResult open class func cellSize(with cellVM: MMCVCellVMProtocol, indexPath: IndexPath) -> CGSize {
        cellVM.indexPath = indexPath
        return cellVM.cellSize ?? .zero
    }
    
    public var _viewModel: MMCVCellVM?
}
