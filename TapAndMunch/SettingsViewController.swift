//
//  SettingsViewController.swift
//  TapAndMunch
//
//  Created by Esther Rios on 12/12/16.
//  Copyright © 2016 HCI. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    let tableItems = ["Name", "Email", "Password", "Address", "Payment Options"]
    let dummyValues = ["Juan Del Pueblo", "juan@upr.edu", "1234", "Stefani UPRM, Mayagüez, P.R. 00682", "PayPal"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
        //return names.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath:IndexPath) -> UITableViewCell{
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "settingCell", for: indexPath) as! SettingsCell
        
        cell.account_info.text = tableItems[indexPath.row]
        cell.account_subinformation.text = dummyValues[indexPath.row]
        
        return (cell)
    }

}
