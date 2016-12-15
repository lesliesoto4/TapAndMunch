//
//  ConfirmOrderViewController.swift
//  TapAndMunch
//
//  Created by Leslie Soto on 12/15/16.
//  Copyright © 2016 HCI. All rights reserved.
//

import UIKit

class ConfirmOrderViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func backButton(_ sender: AnyObject) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        let paymentOrderView = storyboard.instantiateViewController(withIdentifier: "paymentOrder") as! PaymentOrderViewController
        
        self.present(paymentOrderView, animated: true, completion: nil)
    }
    
    @IBAction func accountEditButton(_ sender: AnyObject) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        let accountView = storyboard.instantiateViewController(withIdentifier: "accountInfo") as! AccountViewController
        
        self.present(accountView, animated: true, completion: nil)
    }
    
    @IBAction func finalOrderConfirm(_ sender: AnyObject) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        let finalConfirmOrderView = storyboard.instantiateViewController(withIdentifier: "finalConfirmOrder") as! FinalConfirmOrderViewController
        
        self.present(finalConfirmOrderView, animated: true, completion: nil)
    }
    
}