//
//  MMSlider.swift
//  MMSwiftUIKit
//
//  Created by 小君夜麻吕 on 2025/5/13.
//

import UIKit

@MainActor open class MMSlider: UISlider {
    public var mm: MMSliderChain<MMSlider> { MMSliderChain(view: self) }
}
