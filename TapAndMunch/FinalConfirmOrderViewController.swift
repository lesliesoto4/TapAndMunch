//
//  FinalConfirmOrderViewController.swift
//  TapAndMunch
//
//  Created by Leslie Soto on 12/15/16.
//  Copyright © 2016 HCI. All rights reserved.
//

import UIKit

class FinalConfirmOrderViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func accountEditButton(_ sender: AnyObject) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        let accountView = storyboard.instantiateViewController(withIdentifier: "accountInfo") as! AccountViewController
        
        self.present(accountView, animated: true, completion: nil)
    }
    
    @IBAction func backToRestList(_ sender: AnyObject) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        let restListView = storyboard.instantiateViewController(withIdentifier: "restList") as! RestaurantListViewController
        
        self.present(restListView, animated: true, completion: nil)
    }
}
