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
    public var cellHeight: CGFloat?
    public var indexPath: IndexPath?
    open var cellType: MMTVCellProtocol.Type{ MMTVCell.self }
    public let clickSubject = PassthroughSubject<Int, Never>()
    public var cancellables = Set<AnyCancellable>()
}

open class MMTVCell: UITableViewCell, MMTVCellProtocol {
    
    public var cancellabel = Set<AnyCancellable>()
    public var mm: MMTableViewCellChain<MMTVCell> { MMTableViewCellChain(view: self) }
    
    public var _viewModel: MMTVCellVM?
    
    public required init(reuserID: String) {
        super.init(style: .default, reuseIdentifier: reuserID)
        self.mm
            .selectionStyle(.none)
            .backgroundColor(.clear)
        
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
    }
    
    @discardableResult open class func cellHeight(with cellVM: MMTVCellVMProtocol, indexPath: IndexPath) -> CGFloat {
        cellVM.indexPath = indexPath
        return cellVM.cellHeight ?? 0
    }
    
    open func onClickContentView() {}
}
