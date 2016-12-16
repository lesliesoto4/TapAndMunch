//
//  PaymentOrderViewController.swift
//  TapAndMunch
//
//  Created by Leslie Soto on 12/15/16.
//  Copyright © 2016 HCI. All rights reserved.
//

import UIKit

class PaymentOrderViewController: UIViewController {

    var val1 = ""
    var val2 = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        val2 = val1
    }

    @IBAction func backButton(_ sender: AnyObject) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        let addressOrderView = storyboard.instantiateViewController(withIdentifier: "addressOrder") as! AddressOrderViewController
        
        self.present(addressOrderView, animated: true, completion: nil)
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
    
    @IBAction func confirmPayment(_ sender: AnyObject) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        let confirmOrderView = storyboard.instantiateViewController(withIdentifier: "confirmOrder") as! ConfirmOrderViewController
        
        confirmOrderView.value1 = val2
        
        self.present(confirmOrderView, animated: true, completion: nil)
    }
    
}
