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

    /// Allows you to create rounded edges of the uiview, the border radius default value = 8.0
    static func setRoundedCorners(_ views: [UIView]) {
        
        for view in views {
            view.layer.cornerRadius = 7.0
        }
    }
    
    /**
     This method helps attach a button(or any uiView assest that is placed inside the footerView on the mainStoryboard with appropiate constraints) to the bottom of a tableView. It ensures that whatever is inside the footerView is always attached to the bottom of the tableView. It takes the full size of the tableView height and content size of the scroll view (ie the cells and total scroll area) and the height of the footerView to ensure it has the approapite size for each device.
     - parameter footerView: footer uiView that must have IBout of the view
     - parameter tableView: tableView that has the cells inside
     - parameter view: the main view in which the tableView is house
     */
    static func attach(footerView: UIView, toTheBottomOf tableView: UITableView, using view: UIView) {
        tableView.tableFooterView = nil
        footerView.frame = CGRect(x: 0, y: 0,
                                  width: view.frame.size.width,
                                  height: (tableView.frame.size.height - tableView.contentSize.height - footerView.frame.size.height))
        
        tableView.tableFooterView = footerView
    }
    
}
