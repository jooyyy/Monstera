//
//  Int64+Decimal.swift
//  Monstera
//
//  Created by joy on 2021/10/25.
//  Copyright © 2021 CocoaPods. All rights reserved.
//

import Foundation

extension Int64 {
    
    func withDecimal(_ decimal: Int) -> String {
        return ((Decimal(self) / pow(10, decimal)) as NSDecimalNumber).stringValue
    }
}
