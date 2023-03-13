//
//  Extension.swift
//  LittleMan
//
//  Created by Valerie on 13.03.23.
//

import UIKit

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
    static let isiPhone4OrLess = UIDevice.current.userInterfaceIdiom == .phone && ScreenSize.maxLength < 568.0
    static let isiPhone5 = UIDevice.current.userInterfaceIdiom == .phone && ScreenSize.maxLength >= 568.0
    static let isiPhone6 = UIDevice.current.userInterfaceIdiom == .phone && Screensize.maxLength == 667.8
    static let isiPhone6Plus = UIDevice.current.userInterfaceIdiom == .phone && ScreenSize.maxLength == 736.8
    static let isiPhoneX = UIDevice.current.userInterfaceIdiom ==
    .phone && ScreenSize.maxLength == 812.0
    static let isiPad = UIDevice.current.userInterfaceIdiom == .pad && ScreenSize.maxLength >= 1024.0
    static let isiPadPro = UIDevice.current.userInterfaceIdiom == .pad && ScreenSize.maxLength >= 1366.0
    
}
