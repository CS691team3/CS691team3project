//
//  ImageCell.swift
//  CS691Project
//
//  Created by Kenneth Okereke on 5/13/19.
//  Copyright © 2019 Kenneth Okereke. All rights reserved.
//

import UIKit

class ImageCell: UITableViewCell {

    
    @IBOutlet weak var imagedirection: UIImageView!
    
    @IBOutlet weak var theLabel: UILabel!
    
    func setImage(image: ImageObject) {
        imagedirection.image = image.images
        theLabel.text = image.title
    }
    
    

}
