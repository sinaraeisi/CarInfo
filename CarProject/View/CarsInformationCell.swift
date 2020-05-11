//
//  CarsInformationCell.swift
//  CarProject
//
//  Created by sahand raeisi on 5/7/20.
//  Copyright © 2020 sina raeisi. All rights reserved.
//

import UIKit

class CarsInformationCell: UITableViewCell {
    
      @IBOutlet weak var carNameLabel: UILabel!
      @IBOutlet weak var descriptionLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
