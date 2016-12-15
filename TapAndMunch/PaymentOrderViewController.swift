//
//  PaymentOrderViewController.swift
//  TapAndMunch
//
//  Created by Leslie Soto on 12/15/16.
//  Copyright © 2016 HCI. All rights reserved.
//

import UIKit

class PaymentOrderViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

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
    
    @IBAction func confirmPayment(_ sender: AnyObject) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        let confirmOrderView = storyboard.instantiateViewController(withIdentifier: "confirmOrder") as! ConfirmOrderViewController
        
        self.present(confirmOrderView, animated: true, completion: nil)
    }
    
}
