//
//  CCell.swift
//  CS691Project
//
//  Created by Kenneth Okereke on 5/13/19.
//  Copyright © 2019 Kenneth Okereke. All rights reserved.
//

import UIKit

class CCell: UITableViewCell {

    @IBOutlet weak var imageview: UIImageView!
    
    @IBOutlet weak var labelview: UILabel!
    
    
    
    func setC(image: ImageObject) {
        imageview.image = image.images
        labelview.text = image.title
    }
    
}
