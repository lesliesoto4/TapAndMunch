//
//  AccountViewController.swift
//  TapAndMunch
//
//  Created by Esther Rios on 12/14/16.
//  Copyright © 2016 HCI. All rights reserved.
//

import UIKit

class AccountViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func orderHistory(_ sender: AnyObject) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        let orderHistoryView = storyboard.instantiateViewController(withIdentifier: "orderHist") as! OrderHistoryViewController
        
        self.present(orderHistoryView, animated: true, completion: nil)
    }
    
    @IBAction func editAccountInfo(_ sender: AnyObject) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        let settingsView = storyboard.instantiateViewController(withIdentifier: "settings") as! SettingsViewController
        
        self.present(settingsView, animated: true, completion: nil)
    }
    
    @IBAction func signOut(_ sender: AnyObject) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        let signInView = storyboard.instantiateViewController(withIdentifier: "signIn") as! SignInViewController
        
        self.present(signInView, animated: true, completion: nil)
    }
    
    @IBAction func termsCond(_ sender: AnyObject) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        let termsCondView = storyboard.instantiateViewController(withIdentifier: "termsCond") as! TermsConditionViewController
        
        self.present(termsCondView, animated: true, completion: nil)
    }
    
    @IBAction func helpMenu(_ sender: AnyObject) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        let helpInfoView = storyboard.instantiateViewController(withIdentifier: "helpInfo") as! HelpViewController
        
        self.present(helpInfoView, animated: true, completion: nil)
    }
    
    // Button used to exit the account menu and go back to the Rest List
    @IBAction func exitAccount(_ sender: AnyObject) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)

        let restListView = storyboard.instantiateViewController(withIdentifier: "restList") as! RestaurantListViewController
        
        self.present(restListView, animated: true, completion: nil)
    }
}
