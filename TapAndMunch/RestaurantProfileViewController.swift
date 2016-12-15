//
//  RestaurantProfileViewController.swift
//  TapAndMunch
//
//  Created by Esther Rios on 12/12/16.
//  Copyright © 2016 HCI. All rights reserved.
//

import UIKit

class RestaurantProfileViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func backToRestList(_ sender: AnyObject) {
        // Get access to the storyboard
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        // Get view controller from the storyboard
        let restListView = storyboard.instantiateViewController(withIdentifier: "restList") as! RestaurantListViewController
        
        self.present(restListView, animated: true, completion: nil)
    }
    
    // Takes user to GUI to choose meals
    @IBAction func orderRest(_ sender: AnyObject) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        let chooseOrderView = storyboard.instantiateViewController(withIdentifier: "chooseOrder") as! ChooseOrderViewController
        
        self.present(chooseOrderView, animated: true, completion: nil)
    }
    
    @IBAction func accountEditButton(_ sender: AnyObject) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        let accountView = storyboard.instantiateViewController(withIdentifier: "accountInfo") as! AccountViewController
        
        self.present(accountView, animated: true, completion: nil)
    }
}
