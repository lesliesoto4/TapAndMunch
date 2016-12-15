//
//  AddressOrderViewController.swift
//  TapAndMunch
//
//  Created by Leslie Soto on 12/15/16.
//  Copyright © 2016 HCI. All rights reserved.
//

import UIKit

class AddressOrderViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func backButton(_ sender: AnyObject) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        let chooseOrderView = storyboard.instantiateViewController(withIdentifier: "chooseOrder") as! ChooseOrderViewController
        
        self.present(chooseOrderView, animated: true, completion: nil)
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
    

    @IBAction func confirmAddress(_ sender: AnyObject) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        let paymentOrderView = storyboard.instantiateViewController(withIdentifier: "paymentOrder") as! PaymentOrderViewController
        
        self.present(paymentOrderView, animated: true, completion: nil)
    }
}
