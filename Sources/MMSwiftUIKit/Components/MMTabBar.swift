//
//  MMTabBar.swift
//  MMSwiftUIKit
//
//  Created by 小君夜麻吕 on 2025/5/27.
//

import UIKit

class MMTabBar: UITabBar {
    public lazy var mm = { MMTabBarChain(view: self) }()
}
