//
//  MMTextField.swift
//  MMSwiftUIKit
//
//  Created by 小君夜麻吕 on 2025/5/13.
//

import UIKit

@MainActor open class MMTextField: UITextField {
    public var mm: MMTextFieldChain<MMTextField> { MMTextFieldChain(view: self) }
}
