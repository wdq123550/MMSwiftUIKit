//
//  MMImageView.swift
//  MMSwiftUIKit
//
//  Created by 小君夜麻吕 on 2025/5/13.
//

import UIKit

@MainActor open class MMImageView: UIImageView {
    public var mm: MMImageViewChain<MMImageView> { MMImageViewChain(view: self) }
}
