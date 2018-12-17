//
//  CellTableViewCell4.swift
//  project1CS691
//
//  Created by Kenneth Okereke on 12/15/18.
//  Copyright © 2018 Kenneth Okereke. All rights reserved.
//

import UIKit

class CellTableViewCell4: UITableViewCell {

    @IBOutlet weak var imageview: UIImageView!
    
    @IBOutlet weak var lbl: UILabel!
    
    @IBOutlet weak var directions: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }

}
