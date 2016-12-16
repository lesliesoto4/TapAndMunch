//
//  ChooseOrderViewController.swift
//  TapAndMunch
//
//  Created by Leslie Soto on 12/15/16.
//  Copyright © 2016 HCI. All rights reserved.
//

import UIKit

class ChooseOrderViewController: UIViewController {
    
    @IBOutlet weak var lbl1: UILabel!
    @IBOutlet weak var lbl2: UILabel!
    
    var lbl1_value: Int = 0
    var total_cost: Double = 0.0
    
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
        if(total_cost > 0){
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        let addressOrderView = storyboard.instantiateViewController(withIdentifier: "addressOrder") as! AddressOrderViewController
        
        addressOrderView.valuePassed = String(format: "%.2f", total_cost)
        
        self.present(addressOrderView, animated: true, completion: nil)
        }
    }
    
    @IBAction func minus1(_ sender: Any) {
        lbl1_value+=1
        total_cost = (7.25)*Double(lbl1_value)
        lbl1.text = String(lbl1_value)
        lbl2.text = String(format: "%.2f", total_cost)
    }
    
    @IBAction func plus1(_ sender: Any) {
        if(lbl1_value > 0){
        lbl1_value-=1
        total_cost = (7.25)*Double(lbl1_value)
        lbl1.text = String(lbl1_value)
        lbl2.text = String(format: "%.2f", total_cost)
        }
    }
}
