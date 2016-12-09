//
//  SignInViewController.swift
//  TapAndMunch
//
//  Created by Leslie Soto on 12/9/16.
//  Copyright © 2016 HCI. All rights reserved.
//

import UIKit

class SignInViewController: UIViewController {

    @IBOutlet weak var signInLabel: UILabel!
    @IBOutlet weak var signInImageView: UIImageView!
    
    // Initialization of UI
    override func viewDidLoad() {
        super.viewDidLoad()

        signInLabel.text = "Welcome to Tap & Munch"
        signInImageView.image = #imageLiteral(resourceName: "tap&munch_icon")
    }

}
