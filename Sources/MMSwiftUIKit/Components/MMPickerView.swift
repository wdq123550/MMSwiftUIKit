//
//  MMPickerView.swift
//  MMSwiftUIKit
//
//  Created by 小君夜麻吕 on 2025/5/13.
//

import UIKit

@MainActor open class MMPickerView: UIPickerView {
    public var mm: MMPickerViewChain<MMPickerView> { MMPickerViewChain(view: self) }
}
