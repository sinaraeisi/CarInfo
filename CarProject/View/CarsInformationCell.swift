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
    @IBOutlet weak var imageCar: UIImageView!
    
    func config(object: CarInfo) {
        carNameLabel.text = object.title
        descriptionLabel.text = object.desc
        imageCar.image = object.image
    }
    
}
