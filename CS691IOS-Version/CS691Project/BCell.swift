//
//  BCell.swift
//  CS691Project
//
//  Created by Kenneth Okereke on 5/13/19.
//  Copyright © 2019 Kenneth Okereke. All rights reserved.
//

import UIKit

class BCell: UITableViewCell {

    @IBOutlet weak var ImageView: UIImageView!
    
    @IBOutlet weak var labelNow: UILabel!
    
    func setB(image: ImageObject) {
        ImageView.image = image.images
        labelNow.text = image.title
    }
    
    
    
    
}
