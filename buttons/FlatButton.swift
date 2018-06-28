//
//  FlatButton.swift
//  buttons
//
//  Created by Dan on 28/06/2018.
//  Copyright © 2018 Hnz. All rights reserved.
//

import UIKit

func getImageWithColor(_ color: UIColor, size: CGSize) -> UIImage {
    let rect = CGRect(x: 0, y: 0, width: size.width, height: size.height)
    UIGraphicsBeginImageContextWithOptions(size, false, 0)
    color.setFill()
    UIRectFill(rect)
    let image = UIGraphicsGetImageFromCurrentImageContext()
    UIGraphicsEndImageContext()
    return image!
}

extension UIColor {
    convenience init(red: Int, green: Int, blue: Int) {
        /** Verify that we have valid values */
        assert(red >= 0 && red <= 255, "Invalid red component")
        assert(green >= 0 && green <= 255, "Invalid green component")
        assert(blue >= 0 && blue <= 255, "Invalid blue component")
        
        self.init(red: CGFloat(red) / 255.0, green: CGFloat(green) / 255.0, blue: CGFloat(blue) / 255.0, alpha: 1.0)
    }
    
    /** Initializes and sets color by hex value */
    convenience init(netHex:Int) {
        self.init(red:(netHex >> 16) & 0xff, green:(netHex >> 8) & 0xff, blue:netHex & 0xff)
    }
    
}

class FlatButton: UIButton {
    init(title: String, backgroundColor: UIColor = UIColor(netHex: 0x7F00EE)) {
        super.init(frame: .zero)
        
        self.setTitle(title, for: .normal)
        self.setTitleColor(.white, for: UIControlState())
        self.titleLabel?.font = UIFont(name: "AvenirNext-DemiBold", size: 16)
        
        self.setBackgroundImage(getImageWithColor(backgroundColor, size: CGSize(width: 1, height: 1)), for: .normal)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
