//
//  UIImage+Extensions.swift
//  Monstera
//
//  Created by joy on 2021/10/25.
//  Copyright © 2021 CocoaPods. All rights reserved.
//

import Foundation
import UIKit

// MARK: - UIImage Extensions
extension UIImage {
    /**
     Get an Image from a given color
     
     - parameter color:  UIColor the color to make the image of.
     - parameter width:  Int width of the image
     - parameter height: Int height of the image
     
     - returns:          UIImage an image object
     */
    static func fromColor(color: UIColor, width: Int = 1, height: Int = 1) -> UIImage {
        let rect = CGRect(x: 0, y: 0, width: width, height: height)
        UIGraphicsBeginImageContext(rect.size)
        let context = UIGraphicsGetCurrentContext()
        context!.setFillColor(color.cgColor)
        context!.fill(rect)
        let img = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return img!
    }
    
    static func imageCompress(image: UIImage) -> Data {
        var imgData = image.jpegData(compressionQuality: 1)
        if imgData!.count > 100 * 1024 {
            if imgData!.count > 1024 * 1024 {
                imgData = image.jpegData(compressionQuality: 0.1)
            } else if imgData!.count > 512 * 1024 {
                imgData = image.jpegData(compressionQuality: 0.3)
            }else if imgData!.count > 200 * 1024  {
                imgData = image.jpegData(compressionQuality: 0.5)
            } else {
                imgData = image.jpegData(compressionQuality: 0.8)
            }
        }
        return imgData!;
    }
}
