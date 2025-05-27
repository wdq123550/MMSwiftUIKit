//
//  MMScrollView.swift
//  MMSwiftUIKit
//
//  Created by 小君夜麻吕 on 2025/5/13.
//

import UIKit

@MainActor open class MMScrollView: UIScrollView {
    public var mm: MMScrollViewChain<MMScrollView> { MMScrollViewChain(view: self) }
}
