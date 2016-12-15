//
//  HelpViewController.swift
//  TapAndMunch
//
//  Created by Esther Rios on 12/15/16.
//  Copyright © 2016 HCI. All rights reserved.
//

import UIKit

class HelpViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func backButton(_ sender: AnyObject) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        let accountView = storyboard.instantiateViewController(withIdentifier: "accountInfo") as! AccountViewController
        
        self.present(accountView, animated: true, completion: nil)
    }
}
