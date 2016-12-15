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
    let usernameActive = DummyUser().email
    let passwordActive = DummyUser().password
    
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
    
    @IBAction func signInPressed(_ sender: AnyObject) {
        
        
        // Validate log in
    //override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print("Sign in tapped")

        let usernameInput = usernameInputTextField.text
        let passwordInput = passwordInputTextField.text
        
        // Both inputs exist
        if (usernameInput != nil && passwordInput != nil) {
            
            print("Both inputs do exist")
            
            if (usernameInput == usernameActive) && (passwordInput == passwordActive){
                // Get access to the storyboard
                let storyboard = UIStoryboard(name: "Main", bundle: nil)
                
                // Get view controller from the storyboard
                let restListView = storyboard.instantiateViewController(withIdentifier: "restList") as! RestaurantListViewController
                
                self.present(restListView, animated: true, completion: nil)
                
                print("Logging in")
            }
            else if (usernameInput == "") || (passwordInput == "") {
                print("Missing Credentials")
                
                // Creation of alert controller (message box)
                let alertController = UIAlertController(title: "Missing Credentials", message: "Oops! You forgot to enter a username and/or password. Please try again.", preferredStyle: .alert)
                // Creation of dismissal button to be added to alert message box
                let defaultAction = UIAlertAction(title: "OK", style: .default, handler: nil)
                //Addition of dismissal button to alert message box
                alertController.addAction(defaultAction)
                // Present message in foreground
                self.present(alertController, animated: true, completion: nil)                
            }
            else {
                print("Incorrect email or password")
                
                // Creation of alert controller (message box)
                let alertController = UIAlertController(title: "Incorrect Credential", message: "The email and/or password you entered is incorrect. Please try again.", preferredStyle: .alert)
                // Creation of dismissal button to be added to alert message box
                let defaultAction = UIAlertAction(title: "OK", style: .default, handler: nil)
                //Addition of dismissal button to alert message box
                alertController.addAction(defaultAction)
                // Present message in foreground
                self.present(alertController, animated: true, completion: nil)
                
                // Remove incorrect credentials
                usernameInputTextField.text = ""
                passwordInputTextField.text = ""
            }
        }
        else {
            // Catch errors
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
