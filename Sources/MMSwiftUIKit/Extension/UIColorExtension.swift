//
//  UIColorExtension.swift
//  MMSwiftUIKit
//
//  Created by 小君夜麻吕 on 2025/5/23.
//

import Foundation
import UIKit

extension UIColor {
    
    /// 通过Hex字符串创建颜色 (支持格式: #RGB / #RGBA / #RRGGBB / #RRGGBBAA)
    /// - Parameters:
    ///   - hex: Hex字符串 (支持带#号或不带)
    ///   - alpha: 可选透明度 (0.0~1.0，优先级高于Hex中的透明度)
//    static func color(_ hex: String, alpha: CGFloat? = nil) -> UIColor {
//        var formattedHex = hex
//            .trimmingCharacters(in: .whitespacesAndNewlines)
//            .replacingOccurrences(of: "#", with: "")
//            .uppercased()
//        
//        // 处理特殊长度格式
//        switch formattedHex.count {
//        case 3: formattedHex = formattedHex.map { "\($0)\($0)" }.joined() // RGB → RRGGBB
//        case 4: formattedHex = formattedHex.map { "\($0)\($0)" }.joined() // RGBA → RRGGBBAA
//        case 6: formattedHex += "FF" // 补充完全不透明
//        case 8: break // 完整格式
//        default: return UIColor.clear // 无效格式返回透明色
//        }
//        
//        // 将Hex转换为数值
//        var rgbValue: UInt64 = 0
//        Scanner(string: formattedHex).scanHexInt64(&rgbValue)
//        
//        // 解析颜色分量
//        let red = CGFloat((rgbValue & 0xFF000000) >> 24) / 255.0
//        let green = CGFloat((rgbValue & 0x00FF0000) >> 16) / 255.0
//        let blue = CGFloat((rgbValue & 0x0000FF00) >> 8) / 255.0
//        var hexAlpha = CGFloat(rgbValue & 0x000000FF) / 255.0
//        
//        // 优先使用参数中的透明度
//        if let customAlpha = alpha {
//            hexAlpha = CGFloat(customAlpha)
//        }
//        
//        return UIColor(red: red, green: green, blue: blue, alpha: hexAlpha)
//    }
    
    //
//    color to image
    // uiview to image
}
