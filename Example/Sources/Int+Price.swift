//
//  Int+Price.swift
//  Monstera
//
//  Created by joy on 2021/10/25.
//  Copyright © 2021 CocoaPods. All rights reserved.
//

import Foundation

extension Int {
    
    func priceFormat() -> String {
        let format = NumberFormatter()
        format.numberStyle = .decimal
        return format.string(from: NSNumber(value: self)) ?? ""
    }
}
