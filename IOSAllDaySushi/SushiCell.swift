//
//  SushiCell.swift
//  IOSAllDaySushi
//
//  Created by Student on 11/10/2019.
//  Copyright © 2019 Student. All rights reserved.
//

import UIKit

class SushiCell: UITableViewCell {

    @IBOutlet weak var titleName: UILabel!
    
    @IBOutlet weak var desc: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    

}
