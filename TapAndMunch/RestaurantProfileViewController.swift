//
//  RestaurantProfileViewController.swift
//  TapAndMunch
//
//  Created by Esther Rios on 12/12/16.
//  Copyright © 2016 HCI. All rights reserved.
//

import UIKit

class RestaurantProfileViewController: UIViewController {

    @IBOutlet weak var restProfileScrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(restProfileScrollView)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        
        restProfileScrollView.contentSize = CGSize(width: 375, height: 870)
    }
}

