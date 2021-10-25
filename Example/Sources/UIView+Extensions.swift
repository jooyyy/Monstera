//
//  UIView+Extensions.swift
//  Monstera_Example
//
//  Created by joy on 2021/10/25.
//  Copyright © 2021 CocoaPods. All rights reserved.
//

import UIKit

extension UIView {
    var width: CGFloat {
        get{
            return self.bounds.size.width
        }
        set(width) {
            var frame = self.frame
            frame.size.width = width
            self.frame = frame
        }
    }

    var height: CGFloat {
        get{
            return self.bounds.size.height
        }
        set(height) {
            var frame = self.frame
            frame.size.height = height
            self.frame = frame
        }
    }

    var left: CGFloat {
        get{
            return self.frame.origin.x
        }
        set(left) {
            var frame = self.frame
            frame.origin.x = left
            self.frame = frame
        }
    }

    var right: CGFloat {
        get{
            return self.frame.origin.x + self.frame.size.width
        }
        set(right) {
            var frame = self.frame
            frame.origin.x = right - frame.size.width
            self.frame = frame
        }
    }

    var top: CGFloat {
        get{
            return self.frame.origin.y
        }
        set(top) {
            var frame = self.frame
            frame.origin.y = top
            self.frame = frame
        }
    }

    var bottom: CGFloat {
        get {
            return self.frame.origin.y + self.frame.size.height
        }
        set(bottom) {
            var frame = self.frame
            frame.origin.y = bottom - frame.height
            self.frame = frame
        }
    }
}
