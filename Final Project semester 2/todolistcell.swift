//
//  todolistcell.swift
//  Final Project semester 2
//
//  Created by Jack Kafka on 5/14/20.
//  Copyright © 2020 Jack Kafka. All rights reserved.
//

import UIKit

class todolistcell: UITableViewCell {

    
    @IBOutlet weak var checkImage: UIImageView!
    
    @IBOutlet weak var listLabel: UILabel!
    
    var isChecked = false
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
