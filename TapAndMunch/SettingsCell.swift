//
//  SettingsCell.swift
//  TapAndMunch
//
//  Created by Esther Rios on 12/12/16.
//  Copyright © 2016 HCI. All rights reserved.
//

import UIKit

class SettingsCell: UITableViewCell {

    @IBOutlet weak var account_info: UILabel!
    @IBOutlet weak var account_subinformation: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
