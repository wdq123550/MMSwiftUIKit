//
//  MMNavigationBar.swift
//  MMSwiftUIKit
//
//  Created by 小君夜麻吕 on 2025/5/27.
//

import UIKit

class MMNavigationBar: UINavigationBar {
    public lazy var mm = { MMNavigationBarChain(view: self) }()
}
