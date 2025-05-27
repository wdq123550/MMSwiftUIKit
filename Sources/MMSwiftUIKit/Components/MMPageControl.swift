//
//  MMPageControl.swift
//  MMSwiftUIKit
//
//  Created by 小君夜麻吕 on 2025/5/23.
//

import UIKit

open class MMPageControl: UIPageControl {
    public var mm: MMPageControlChain<MMPageControl> { MMPageControlChain(view: self) }
}
