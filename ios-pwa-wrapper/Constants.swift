//
//  Constants.swift
//  ios-pwa-wrapper
//
//  Created by Martin Kainzbauer on 29/10/2017.
//  Copyright © 2017 Martin Kainzbauer. All rights reserved.
//

import UIKit

// Basic App-/WebView-configuration
let appTitle = "Wize"

#if DEBUG
let webAppUrl = URL(string: "http://192.168.1.9:8000/app/")
let allowedOrigin = "192.168.1.9"
#else
let webAppUrl = URL(string: "https://www.wizeinsights.com/app/")
let allowedOrigin = "www.wizeinsights.com"
#endif

let useUserAgentPostfix = true
let userAgentPostfix = "iOSApp"
let useCustomUserAgent = false
let customUserAgent = "Mozilla/5.0 (iPhone; CPU iPhone OS 11_0_1 like Mac OS X) AppleWebKit/604.2.10 (KHTML, like Gecko) Mobile/15A8401"

// UI Settings
let changeAppTitleToPageTitle = false
let forceLargeTitle = false
let enableBounceWhenScrolling = true

// Colors & Styles
let wizeCyan = getColorFromHex(hex: 0x03b2dd, alpha: 1.0)

let progressBarColor = wizeCyan
let offlineIconColor = UIColor.darkGray
let buttonColor = wizeCyan
let activityIndicatorColor = wizeCyan

// Color Helper function
func getColorFromHex(hex: UInt, alpha: CGFloat) -> UIColor {
    return UIColor(
        red: CGFloat((hex & 0xFF0000) >> 16) / 255.0,
        green: CGFloat((hex & 0x00FF00) >> 8) / 255.0,
        blue: CGFloat(hex & 0x0000FF) / 255.0,
        alpha: CGFloat(alpha)
    )
}
