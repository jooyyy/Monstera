//
//  Data.swift
//  Monstera_Example
//
//  Created by joy on 2021/10/25.
//  Copyright © 2021 CocoaPods. All rights reserved.
//

import Foundation

extension Data {
    
    func toString() -> String {
        let str = String(decoding: self, as: UTF8.self)
        return str
    }
}
