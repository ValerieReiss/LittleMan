//
//  Extension.swift
//  LittleMan
//
//  Created by Valerie on 13.03.23.
//

import UIKit
import SpriteKit


enum UIInterfaceIdiom: Int {
    case undefined
    case phone
    case pad
}

struct Screensize {
    static let width = UIScreen.main.bounds.size.width
    static let height = UIScreen.main.bounds.size.height
    static let maxLength = max(Screensize.width, Screensize.height)
    static let minLength = min(Screensize.width, Screensize.height)
}

struct DeviceType {
    static let isiPhone4OrLess = UIDevice.current.userInterfaceIdiom == .phone && Screensize.maxLength < 568.0
    static let isiPhone5 = UIDevice.current.userInterfaceIdiom == .phone && Screensize.maxLength >= 568.0
    static let isiPhone6 = UIDevice.current.userInterfaceIdiom == .phone && Screensize.maxLength == 667.8
    static let isiPhone6Plus = UIDevice.current.userInterfaceIdiom == .phone && Screensize.maxLength == 736.8
    static let isiPhoneX = UIDevice.current.userInterfaceIdiom ==
    .phone && Screensize.maxLength == 812.0
    static let isiPad = UIDevice.current.userInterfaceIdiom == .pad && Screensize.maxLength >= 1024.0
    static let isiPadPro = UIDevice.current.userInterfaceIdiom == .pad && Screensize.maxLength >= 1366.0
    
}

public extension CGFloat{
    public static func universalFont(size: CGFloat) -> CGFloat {
        if DeviceType.isiPhone4OrLess {
            return size * 0.6
        }
        if DeviceType.isiPhone5 {
            return size * 0.8
        }
        if DeviceType.isiPhone6 {
            return size * 1.0
        }
        if DeviceType.isiPhone6Plus {
            return size * 1.0
        }
        if DeviceType.isiPhoneX {
            return size * 1.0
        }
        
        if DeviceType.isiPad {
            return size * 2.1
        }
        if DeviceType.isiPadPro {
            return size * 2.1
        } else {return size * 1.0}
    }
}
 
