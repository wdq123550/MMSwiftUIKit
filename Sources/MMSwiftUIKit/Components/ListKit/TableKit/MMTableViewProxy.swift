//
//  TableViewProxy.swift
//  Test
//
//  Created by 小君夜麻吕 on 2025/4/1.
//

import Foundation
import UIKit

internal class MMTableProxy: NSObject, UITableViewDelegate, UITableViewDataSource {
    
    internal init(extensionTarget: AnyObject) {
        self.extensionTarget = extensionTarget
        super.init()
    }
    
    internal weak var extensionTarget: AnyObject!
    internal var datas = [Any]()
    internal func reload(datas: [Any]) { self.datas = datas }
    internal override func responds(to aSelector: Selector!) -> Bool {
        if self.extensionTarget!.responds(to: aSelector){
            return true
        }
        return super.responds(to: aSelector)
    }
    internal override func forwardingTarget(for aSelector: Selector!) -> Any? {
        extensionTarget
    }
    
    internal func numberOfSections(in tableView: UITableView) -> Int {
        if self.isTwoDimensionalArray(self.datas) {
            return self.datas.count
        }else{
            return 1
        }
    }
    internal func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if self.isTwoDimensionalArray(self.datas) {
            let rowArray = self.datas[section] as! Array<Any>
            return rowArray.count
        }else{
            return self.datas.count
        }
    }
    internal func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var viewModel: any MMTVCellVMProtocol
        if self.isTwoDimensionalArray(self.datas) {
            let rowArray = self.datas[indexPath.section] as! [any MMTVCellVMProtocol]
            viewModel = rowArray[indexPath.row]
        }else{
            viewModel = self.datas[indexPath.row] as! (any MMTVCellVMProtocol)
        }
        let reuseID = String(describing: viewModel.cellType)
        var cell = tableView.dequeueReusableCell(withIdentifier: reuseID) as? MMTVCellProtocol
        if cell == nil {
            cell = viewModel.cellType.init(reuserID: reuseID)
        }
        cell?.reset(with: viewModel, indexPath: indexPath)
        return cell!
    }
    
    internal func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        var viewModel: any MMTVCellVMProtocol
        if self.isTwoDimensionalArray(self.datas) {
            let rowArray = self.datas[indexPath.section] as! [any MMTVCellVMProtocol]
            viewModel = rowArray[indexPath.row]
        }else{
            viewModel = self.datas[indexPath.row] as! (any MMTVCellVMProtocol)
        }
        return viewModel.cellType.cellHeight(with: viewModel, indexPath: indexPath)
    }
    
    internal func scrollViewWillBeginDragging(_ scrollView: UIScrollView) {
        UIApplication.shared.delegate?.window??.endEditing(true)
        if self.extensionTarget.responds(to: #selector(UIScrollViewDelegate.scrollViewWillBeginDragging(_:))){
            self.extensionTarget.scrollViewWillBeginDragging(scrollView)
        }
    }
    
    private func isTwoDimensionalArray(_ datas: [Any]) -> Bool { datas.first is [Any] }
}
