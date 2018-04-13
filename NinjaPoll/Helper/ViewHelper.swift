//
//  ViewHelper.swift
//  NinjaPoll
//
//  Created by Izzy Ali on 12/04/2018.
//  Copyright © 2018 Izzy Ali. All rights reserved.
//

import Foundation
import UIKit

/// Helper struct that changes the properties (colour, order) of certain views using static methods
struct ViewHelper {
    
    /// Allows you to change the border colour of UIViews, the reason you have to set the borderWitdh property is becuase the colour of the border won't take effect without changing the border property (which is defaulted to 1.0). The colour can be of UIColor type but is converted to cgColor
    /// - Parameters:
    ///     - views: An array of uiviews or subclass of uiview
    ///     - colour: The colour set for the border
    static func setColourFor(_ views: [UIView], with colour: UIColor? = UIColor(red: 213.0/255.0, green: 220.0/255.0, blue: 226.0/255.0, alpha: 1.0)) {
        
        for view in views {
            view.layer.borderWidth = 1.0
            view.layer.borderColor = colour?.cgColor
        }
    }
    
    static func setRoundedCorners(_ views: [UIView]) {
        
        for view in views {
            
        }
    }
}
