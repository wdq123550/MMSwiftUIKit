//
//  MMLabel.swift
//  MMSwiftUIKit
//
//  Created by 小君夜麻吕 on 2025/5/13.
//

import UIKit

@MainActor open class MMLabel: UILabel {
    public var mm: MMLabelChain<MMLabel> { MMLabelChain(view: self) }
}
