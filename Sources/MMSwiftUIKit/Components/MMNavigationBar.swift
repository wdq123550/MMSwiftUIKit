//
//  MMNavigationBar.swift
//  MMSwiftUIKit
//
//  Created by 小君夜麻吕 on 2025/5/27.
//

import UIKit

open class MMNavigationBar: UINavigationBar {
    public var mm: MMNavigationBarChain<MMNavigationBar> { MMNavigationBarChain(view: self) }
}
