//
//  ConfirmOrderViewController.swift
//  TapAndMunch
//
//  Created by Leslie Soto on 12/15/16.
//  Copyright © 2016 HCI. All rights reserved.
//

import UIKit

class ConfirmOrderViewController: UIViewController {

    @IBOutlet weak var order_cost: UILabel!
    @IBOutlet weak var ivu: UILabel!
    @IBOutlet weak var service_fee: UILabel!
    @IBOutlet weak var grand_total: UILabel!
    
    var value1 = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let temp = Double(value1)
        let temp_ivu = Double(value1)! * 0.115
        let temp_fee = Double(value1)! * 0.10
        
        order_cost.text = String(format: "%.2f", temp!)
        ivu.text = String(format: "%.2f", temp_ivu)
        service_fee.text = String(format: "%.2f", temp_fee)
        grand_total.text = String(format: "%.2f", temp! + temp_ivu + temp_fee)
        
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
    
    @IBAction func cancelOrder(_ sender: AnyObject) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        let restListView = storyboard.instantiateViewController(withIdentifier: "restList") as! RestaurantListViewController
        
        self.present(restListView, animated: true, completion: nil)
    }
    
    @IBAction func finalOrderConfirm(_ sender: AnyObject) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        let finalConfirmOrderView = storyboard.instantiateViewController(withIdentifier: "finalConfirmOrder") as! FinalConfirmOrderViewController
        
        self.present(finalConfirmOrderView, animated: true, completion: nil)
    }
    
}
