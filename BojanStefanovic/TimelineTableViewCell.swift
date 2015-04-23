//
//  TimelineTableViewCell.swift
//  BojanStefanovic
//
//  Created by Bojan Stefanovic on 2015-04-23.
//  Copyright (c) 2015 Bojan Stefanovic. All rights reserved.
//

import UIKit

class TimelineTableViewCell: UITableViewCell {

    @IBOutlet weak var tableCellImage: UIImageView!
    @IBOutlet weak var tableCellLineImage: UIImageView!
    @IBOutlet weak var tableCellLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
