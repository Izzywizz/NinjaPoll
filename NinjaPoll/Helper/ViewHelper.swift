//
//  ViewHelper.swift
//  NinjaPoll
//
//  Created by Izzy Ali on 12/04/2018.
//  Copyright © 2018 Izzy Ali. All rights reserved.
//

import Foundation
import UIKit

struct ViewHelper {
    
    static func roundUIView(_ views: [UIView]) {
        
        for view in views {
            view.layer.borderWidth = 1.0
            view.layer.borderColor = UIColor.red.cgColor
        }
    }
}
