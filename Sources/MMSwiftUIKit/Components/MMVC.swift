//
//  MMVC.swift
//  MMSwiftUIKit
//
//  Created by 小君夜麻吕 on 2025/5/13.
//

import UIKit
import Combine

@MainActor open class MMVC: UIViewController {
    public var cancellabel = Set<AnyCancellable>()
    open var navigationBackImage: UIImage? { UIImage(systemName: "arrowshape.backward.fill") }
    @objc open func navigationBack(animated: Bool = true) { self.navigationController?.popViewController(animated: animated) }
    public var mm: MMViewControllerChain<MMVC> { MMViewControllerChain(view: self) }
}
