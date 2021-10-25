//
//  UIScreen.swift
//  Monstera_Example
//
//  Created by joy on 2021/10/25.
//  Copyright © 2021 CocoaPods. All rights reserved.
//

import UIKit

extension UIScreen {
    
    /// The center of the screen
    public var center: CGPoint {
        return CGPoint(x: width/2, y: height/2)
    }
    
    /// The width of the screen
    public var width: CGFloat {
        return bounds.width
    }
    
    /// The height of the screen
    public var height: CGFloat {
        return bounds.height
    }

}
