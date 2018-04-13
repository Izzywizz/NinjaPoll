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
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var signUpNowButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ViewHelper.setColourFor([emailAddressView, passwordView])
        ViewHelper.setRoundedCorners([emailAddressView, passwordView, loginButton, signUpNowButton])
    }

    //MARK:- Actions
    @IBAction func forgotPassword(_ sender: UIButton) {
        print("Forgot Password Button Pressed!")
    }
    
    @IBAction func login(_ sender: UIButton) {
        print("Login Button Pressed!")
    }
    
    @IBAction func signUp(_ sender: UIButton) {
        print("Sign Up Baby!")
    }
    
}


//MARK: TextFeild Delegate
extension SignInViewController: UITextFieldDelegate {
    
    /// Ensures that when the user uses the keyboard next/return button that it goes to the next appropiate textView and then eventually dismisses itself when it know
    /// However this is only possile if you set tag on storyboard and be-careful that the right amount of superview property chaining is correct.
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        let nextTag: Int = textField.tag + 1
        let nextResponder: UIResponder? = textField.superview?.superview?.superview?.viewWithTag(nextTag)
        
        if let nextR = nextResponder {  // Found next responder, so set it.
            nextR.becomeFirstResponder()
        } else { // Not found, so remove keyboard from voew.
            textField.resignFirstResponder()
        }
        return false
    }
}

