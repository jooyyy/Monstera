//
//  String+Extensions.swift
//  Monstera_Example
//
//  Created by joy on 2021/10/25.
//  Copyright © 2021 CocoaPods. All rights reserved.
//

import Foundation

let REGEXP_EMAIL = "^[\\w-]+(\\.[\\w-]+)*@[\\w-]+(\\.[\\w-]+)+$"

// MARK: - String Extensions
extension String {
    
    /**
     Search a string inside a string "CASE SENSITIVE"
     
     - parameter find: String the string to be search for
     
     - returns:        Bool returns true if the string contains the supplied string or false otherwise
     */
    func contains(find: String) -> Bool{
        return self.range(of:find) != nil
    }
    
    
    /**
     Search a string inside a string "NOT CASE SENSITIVE"
     
     - parameter find: String the string to be search for
     
     - returns:        Bool returns true if the string contains the supplied string or false otherwise
     */
    func containsIgnoringCase(find: String) -> Bool {
        return self.range(of:find, options: .caseInsensitive) != nil
    }
    
    func isValidEmail() -> Bool {
        guard let nsRegex = try? NSRegularExpression(pattern: REGEXP_EMAIL, options:[]) else {
            return false
        }
        let fullNSRange = NSRange(self.startIndex..., in: self)
        return nsRegex.rangeOfFirstMatch(in: self, options: .anchored, range: fullNSRange) == fullNSRange
    }
    
    func ellipsis(prefix: Int = 6, suffix: Int = 6, replace: String = "******") -> String {
        if self.count <= prefix + suffix {
            return self
        }
        
        return "\(self.prefix(prefix))\(replace)\(self.suffix(suffix))"
    }
}
