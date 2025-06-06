//
//  MMTabBar.swift
//  MMSwiftUIKit
//
//  Created by 小君夜麻吕 on 2025/5/27.
//

import UIKit

open class MMTabBar: UITabBar {
    public var mm: MMTabBarChain<MMTabBar> { MMTabBarChain(view: self) }
}
