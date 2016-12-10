//
//  ProductCell.swift
//  TapAndMunch
//
//  Created by Esther Rios on 12/10/16.
//  Copyright © 2016 HCI. All rights reserved.
//

import UIKit

class ProductCell: UITableViewCell {

    @IBOutlet weak var my_logo: UIImageView!
    @IBOutlet weak var my_name: UILabel!
    @IBOutlet weak var my_price: UILabel!
    @IBOutlet weak var my_cuisine: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
