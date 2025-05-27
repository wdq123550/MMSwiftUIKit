//
//  MMWebView.swift
//  MMSwiftUIKit
//
//  Created by 小君夜麻吕 on 2025/5/27.
//

import UIKit
import WebKit

open class MMWebView: WKWebView {
    public var mm: MMWebViewChain<MMWebView> { MMWebViewChain(view: self) }
}
