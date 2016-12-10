//
//  TermsConditionViewController.swift
//  TapAndMunch
//
//  Created by Leslie Soto on 12/10/16.
//  Copyright © 2016 HCI. All rights reserved.
//

import UIKit

class TermsConditionViewController: UIViewController {

    @IBOutlet weak var termsScrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.addSubview(termsScrollView)
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        
        // Now user can scroll through all the page
        termsScrollView.contentSize = CGSize(width: 375, height: 2325)
    }
}
