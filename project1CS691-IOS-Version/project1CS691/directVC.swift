//
//  directionVC.swift
//  project1CS691
//
//  Created by Kenneth Okereke on 12/9/18.
//  Copyright © 2018 Kenneth Okereke. All rights reserved.
//

import UIKit

class directionVC: UIViewController {

    @IBOutlet weak var img: UIImageView!
    
    @IBOutlet weak var lblname: UILabel!
    @IBOutlet weak var yesButton: UIButton!
    
    
    @IBOutlet weak var noButton: UIButton!
    
    @IBOutlet weak var happy: UIImageView!
    
    @IBOutlet weak var sad: UIImageView!
    
    @IBOutlet weak var lbl_input: UILabel!
    var image = UIImage()
    var name = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lbl_input.text = "Do you see this?"
        img.image = image
        
        yesButton.layer.cornerRadius = 10
        yesButton.clipsToBounds = true
        
        noButton.layer.cornerRadius = 10
        noButton.clipsToBounds = true
        
        
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func yes_Button(_ sender: Any) {
        
        if happy.isHidden == true && lblname.isHidden == true {
           
            lblname.isHidden = false
           
            lblname.text = "Good! now keep going!!!!"
        } else {
            happy.isHidden = true
            lblname.isHidden = true
            
        }
        
    }
    
    
    @IBAction func no_Button(_ sender: Any) {
        if sad.isHidden == true  && lblname.isHidden == true {
            
            
            lblname.isHidden = false
            lblname.text = "Follow directions and try again"
        } else {
            sad.isHidden = true
            lblname.isHidden = true
        }
    }
    

   
}
