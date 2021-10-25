//
//  UIFont+Extensions.swift
//  Monstera
//
//  Created by joy on 2021/10/25.
//  Copyright © 2021 CocoaPods. All rights reserved.
//

import UIKit

extension UIFont {
    
    func printAllFontNames() {
        for font in UIFont.familyNames {
            let fonts = UIFont.fontNames(forFamilyName: font)
            for one in fonts {
                print(one)
            }
        }
    }
}
