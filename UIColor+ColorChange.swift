//
//  ColorManager.swift
//  CocoaPodsManager
//
//  Created by Sunrise on 2019/6/18.
//  Copyright © 2019 ANSO. All rights reserved.
//

import UIKit

// MARK: - 颜色类别
extension UIColor {

    /// 颜色类别
    ///
    /// - Parameter color: 十六进制字符串，如”#FFFFFF“，”0xFFF000“，”E2E2E2“，字符串数据为6位
    /// - Returns: 颜色color
    public class func colorWithHexString(_ color:String) -> UIColor {
        
        var cString = color.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines).uppercased()
        
        if cString.hasPrefix("#"){
            
            let index = cString.index(cString.startIndex, offsetBy: 1)
            
            cString = String(cString[index...])
        }
        
        if cString.hasPrefix("0x"){
            
            let index = cString.index(cString.startIndex, offsetBy: 2)
            
            cString = String(cString[index...])
        }
        
        if cString.count != 6 {
            
            return UIColor.clear
        }
        
        let rIndex      = cString.index(cString.startIndex, offsetBy: 2)
        let rString     = cString.prefix(upTo: rIndex)
        
        let otherString = cString.suffix(from: rIndex)
        let gIndex      = otherString.index(otherString.startIndex, offsetBy: 2)
        let gString     = otherString.prefix(upTo: gIndex)
        let bIndex      = cString.index(cString.endIndex, offsetBy: -2)
        let bString     = cString.suffix(from: bIndex)
        
        var r:CUnsignedInt  = 0, g:CUnsignedInt = 0, b:CUnsignedInt = 0
        
        Scanner(string: String(rString)).scanHexInt32(&r)
        Scanner(string: String(gString)).scanHexInt32(&g)
        Scanner(string: String(bString)).scanHexInt32(&b)
        
        return UIColor(red: CGFloat(r)/255.0, green: CGFloat(g)/255.0, blue: CGFloat(b)/255.0, alpha: CGFloat(1))
    }
}
