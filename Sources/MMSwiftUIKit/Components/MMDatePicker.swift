//
//  MMDatePicker.swift
//  MMSwiftUIKit
//
//  Created by 小君夜麻吕 on 2025/5/13.
//

import UIKit

@MainActor open class MMDatePicker: UIDatePicker {
    public lazy var mm = { MMDatePickerChain(view: self) }()
}
