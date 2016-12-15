//
//  ChooseOrderViewController.swift
//  TapAndMunch
//
//  Created by Leslie Soto on 12/15/16.
//  Copyright © 2016 HCI. All rights reserved.
//

import UIKit

class ChooseOrderViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func backButton(_ sender: AnyObject) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        let restProfileView = storyboard.instantiateViewController(withIdentifier: "restProfile") as! RestaurantProfileViewController
        
        self.present(restProfileView, animated: true, completion: nil)
    }
    
    @IBAction func accountEditButton(_ sender: AnyObject) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        let accountView = storyboard.instantiateViewController(withIdentifier: "accountInfo") as! AccountViewController
        
        self.present(accountView, animated: true, completion: nil)
    }

    @IBAction func cancelOrder(_ sender: AnyObject) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        let restListView = storyboard.instantiateViewController(withIdentifier: "restList") as! RestaurantListViewController
        
        self.present(restListView, animated: true, completion: nil)
    }

    // Next GUI (address confirmation) in order process
    @IBAction func placeOrder(_ sender: AnyObject) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        let addressOrderView = storyboard.instantiateViewController(withIdentifier: "addressOrder") as! AddressOrderViewController
        
        self.present(addressOrderView, animated: true, completion: nil)
    }
}
