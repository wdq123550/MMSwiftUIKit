//
//  TableViewCell.swift
//  Test
//
//  Created by 小君夜麻吕 on 2025/4/1.
//

import Foundation
import UIKit
import Combine

open class MMTVCellVM: NSObject, MMTVCellVMProtocol{
    //protocol
    public var cellHeight: CGFloat?
    public var indexPath: IndexPath?
    open var cellType: MMTVCellProtocol.Type{ MMTVCell.self }
    
    //click
    public let clickSubject = PassthroughSubject<Void, Never>()
    
    // cancellabel
    public var cancellable = Set<AnyCancellable>()
    
    //update cell
    fileprivate let updateCellSubject = PassthroughSubject<Void, Never>()
    fileprivate var isConfigUpdateAction = false
    public func updateCell() { self.updateCellSubject.send() }
    
}

open class MMTVCell: UITableViewCell, MMTVCellProtocol {
    
    public var cancellabel = Set<AnyCancellable>()
    public var mm: MMTableViewCellChain<MMTVCell> { MMTableViewCellChain(view: self) }
    public var _viewModel: MMTVCellVM?
    
    public required init(reuserID: String) {
        super.init(style: .default, reuseIdentifier: reuserID)
        self.selectionStyle = .none
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
    
    open func reset(with cellVM: MMTVCellVMProtocol, indexPath: IndexPath) {
        self._viewModel = cellVM as? MMTVCellVM
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
    
    @discardableResult open class func cellHeight(with cellVM: MMTVCellVMProtocol, indexPath: IndexPath) -> CGFloat {
        cellVM.indexPath = indexPath
        return cellVM.cellHeight ?? 0
    }
    
    open func onClickContentView() {}
}
