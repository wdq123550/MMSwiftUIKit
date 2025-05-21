//
//  TableProtocol.swift
//  Test
//
//  Created by 小君夜麻吕 on 2025/4/1.
//

import Foundation
import UIKit

public protocol MMTVCellVMProtocol: AnyObject {
    var cellHeight: CGFloat? { get set }
    var indexPath: IndexPath? { get set }
    var cellType: MMTVCellProtocol.Type { get }
}

public protocol MMTVCellProtocol: UITableViewCell{
    init(reuserID: String)
    func reset(with cellVM: MMTVCellVMProtocol, indexPath: IndexPath)
    @discardableResult static func cellHeight(with cellVM: MMTVCellVMProtocol, indexPath: IndexPath) -> CGFloat
}
