//
//  CollectionViewProxy.swift
//  Test
//
//  Created by 小君夜麻吕 on 2025/4/1.
//

import Foundation
import UIKit

internal class MMCollectionViewProxy: NSObject, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    internal init(extensionTarget: AnyObject) {
        self.extensionTarget = extensionTarget
        super.init()
    }
    
    internal override func responds(to aSelector: Selector!) -> Bool {
        if self.extensionTarget!.responds(to: aSelector){
            return true
        }
        return super.responds(to: aSelector)
    }
    internal override func forwardingTarget(for aSelector: Selector!) -> Any? { extensionTarget }
    internal func scrollViewWillBeginDragging(_ scrollView: UIScrollView) {
        UIApplication.shared.delegate?.window??.endEditing(true)
        if extensionTarget!.responds(to: #selector(UIScrollViewDelegate.scrollViewWillBeginDragging(_:))){
            extensionTarget.scrollViewWillBeginDragging(scrollView)
        }
    }
    internal func reload(datas: [Any]) { self.datas = datas }
    
    internal func numberOfSections(in collectionView: UICollectionView) -> Int {
        if self.isTwoDimensionalArray(self.datas) {
            return self.datas.count
        }else{
            return 1
        }
    }
    internal func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if self.isTwoDimensionalArray(self.datas) {
            let rowArray = self.datas[section] as! Array<Any>
            return rowArray.count
        }else{
            return self.datas.count
        }
    }
    internal func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        var viewModel: any MMCVCellVMProtocol
        if self.isTwoDimensionalArray(self.datas) {
            let rowArray = self.datas[indexPath.section] as! [any MMCVCellVMProtocol]
            viewModel = rowArray[indexPath.row]
        }else{
            viewModel = self.datas[indexPath.row] as! (any MMCVCellVMProtocol)
        }
        let reuseID = String(describing: viewModel.cellType)
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseID, for: indexPath) as! MMCVCellProtocol
        cell.reset(with: viewModel, indexPath: indexPath)
        return cell as UICollectionViewCell
    }
    
    internal func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        var viewModel: any MMCVCellVMProtocol
        if self.isTwoDimensionalArray(self.datas) {
            let rowArray = self.datas[indexPath.section] as! [any MMCVCellVMProtocol]
            viewModel = rowArray[indexPath.row]
        }else{
            viewModel = self.datas[indexPath.row] as! (any MMCVCellVMProtocol)
        }
        return viewModel.cellSize ?? viewModel.cellType.cellSize(with: viewModel, indexPath: indexPath)
    }
    
    private weak var extensionTarget: AnyObject!
    private var datas = [Any]()
    private func isTwoDimensionalArray(_ datas: [Any]) -> Bool { datas.first is [Any] }
    
}
