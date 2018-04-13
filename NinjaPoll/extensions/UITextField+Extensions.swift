//
//  UITextField+Extensions.swift
//  NinjaPoll
//
//  Created by Izzy Ali on 13/04/2018.
//  Copyright © 2018 Izzy Ali. All rights reserved.
//

import UIKit

extension UITextField {
    
    ///This is accessing user-defined runtime attriutes and displays them in the interface builder.
    @IBInspectable var doneAccessory: Bool {
        get {
            return self.doneAccessory
        }
        set (hasDone) {
            if hasDone{
                addDoneButtonOnKeyboard()
            }
        }
    }
    
    /// creates the keyboard done button using UIToolbar. Inside the toolbar, we create a UIBarButtonItem. You can name the button however you want, and you can add multiple buttons (depending on your needs). In other words, use this function to customize the toolbar.
    func addDoneButtonOnKeyboard() {
        let doneToolbar: UIToolbar = UIToolbar(frame: CGRect.init(x: 0, y: 0, width: UIScreen.main.bounds.width, height: 50))
        doneToolbar.barStyle = .default
        
        let flexSpace = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
        let done: UIBarButtonItem = UIBarButtonItem(title: "Done", style: .done, target: self, action: #selector(self.doneButtonAction))
        
        let items = [flexSpace, done]
        doneToolbar.items = items
        doneToolbar.sizeToFit()
        
        self.inputAccessoryView = doneToolbar
    }
    
    @objc func doneButtonAction() {
        self.resignFirstResponder()
    }
}
