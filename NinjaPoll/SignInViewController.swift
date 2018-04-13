//
//  ViewController.swift
//  NinjaPoll
//
//  Created by Izzy Ali on 11/04/2018.
//  Copyright © 2018 Izzy Ali. All rights reserved.
//

import UIKit

class SignInViewController: UIViewController {

    @IBOutlet weak var emailAddressView: UIView!
    @IBOutlet weak var passwordView: UIView!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var forgotButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ViewHelper.setColourFor([emailAddressView, passwordView])
    }

    //MARK:- Actions
    @IBAction func forgotPassword(_ sender: UIButton) {
        print("Forgot Password Button Pressed!")
    }
}

