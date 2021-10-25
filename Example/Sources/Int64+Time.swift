//
//  Int64+Time.swift
//  Monstera
//
//  Created by joy on 2021/10/25.
//  Copyright © 2021 CocoaPods. All rights reserved.
//

import Foundation

extension Int64 {
    
    func formatDate() -> String {
        return self.formatDate(with: "dd MMMM, YYYY")
    }
    
    func formatDate(with layout:String) -> String {
        let timestamp = self > Int64(Date().timeIntervalSince1970) * 1000 ? self/Int64(1e9) : self
        let date = NSDate(timeIntervalSince1970: TimeInterval(timestamp))
        let dayTimePeriodFormatter = DateFormatter()
        dayTimePeriodFormatter.dateFormat = layout
        let dateString = dayTimePeriodFormatter.string(from: date as Date)
        return dateString
    }
    
    func formateDateReadable() -> String {
        var interval = Int64(Date().timeIntervalSince1970) - self
        if interval <= 0 {
            interval = 0
        }
        if interval < 60 {
            return "\(interval) seconds ago"
        }else if interval < 3600 {
            return "\(interval / 60) minutes ago"
        }else if interval < 24 * 3600 {
            return "\(interval/3600) hours ago"
        }else {
            return self.formatDate(with: "dd/MMM/YY")
        }
    }
}
