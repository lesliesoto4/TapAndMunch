//
//  SignInViewController.swift
//  TapAndMunch
//
//  Created by Leslie Soto on 12/9/16.
//  Copyright © 2016 HCI. All rights reserved.
//

import UIKit

class SignInViewController: UIViewController {

    // Dummy sign in parameters
    let usernameActive = "user@tp.com"
    let passwordActive = "12345"
    
    // Outlet variable initialization
    @IBOutlet weak var signInLabel: UILabel!
    @IBOutlet weak var signInImageView: UIImageView!
    @IBOutlet weak var usernameInputTextField: UITextField!
    @IBOutlet weak var passwordInputTextField: UITextField!
    
    // Initialization of UI
    override func viewDidLoad() {
        super.viewDidLoad()

        signInLabel.text = "Welcome to Tap & Munch"
        signInImageView.image = #imageLiteral(resourceName: "tap&munch_icon")
    }
    
    // Unfinished
    @IBAction func signInPressed(_ sender: AnyObject) -> Void {
        print("Sign in tapped")

        let usernameInput = usernameInputTextField.text
        let passwordInput = passwordInputTextField.text
        
        // Both inputs exist
        if usernameInput != nil && passwordInput != nil {
            
            print("Both inputs do exist")
            
            if (usernameInput == usernameActive) && (passwordInput == passwordActive){
                // TO DO LOG IN PROCESS
                print("Logging in")
            }
            else {
                // TO DO Incorrect email or password
                print("Incorrect email or password")
            }
        }
        else {
            // TO DO Display alert message
            print("One or both inputs do not exist")
        }
    }

    // Unfinished
    @IBAction func forgotPasswordPressed(_ sender: AnyObject) -> Void {
        print("Forgot password tapped")
    }
    
    // Unfinished
    @IBAction func signUpPressed(_ sender: AnyObject) -> Void {
        print("Sign up tapped")
    }
    
}
