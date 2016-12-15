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
    
    // Code that supposedly helps to add a button to a main view that still works through the subview
    // http://stackoverflow.com/questions/9781766/adding-custom-uibutton-to-subview
//    First Take IBOutlet of subView and add it to the main View.
//    
//    IBOutlet UIView *subView;
//    Then, add UIButton to the SubView like this:
//    
//    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
//    
//    //set the position of the button
//    button.frame = CGRectMake(0, 0, 100, 30);
//    
//    //set the button's title
//    [button setTitle:@"Click Me!" forState:UIControlStateNormal];
//    
//    [btnMenu addTarget:self action:@selector(your MethodName:) forControlEvents:UIControlEventTouchUpInside];
//    
//    //add the button to the view
//    [subView addSubview:button];
//    Then,
//    
//    -(IBAction)your MethodName:(id)sender {
//    
//    
//    }
//    In Above Method Remove SubView from Main View.
}
