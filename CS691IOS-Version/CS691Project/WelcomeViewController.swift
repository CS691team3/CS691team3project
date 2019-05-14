//
//  WelcomeViewController.swift
//  project1CS691
//
//  Created by Kenneth Okereke on 12/16/18.
//  Copyright © 2018 Kenneth Okereke. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet weak var login_Button: UIButton!
    
    @IBOutlet weak var register_button: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        login_Button.layer.borderWidth = 2
        login_Button.layer.cornerRadius = 18
        login_Button.layer.borderColor = UIColor.white.cgColor
        
        
        register_button.layer.borderWidth = 2
        register_button.layer.cornerRadius = 10
        register_button.layer.borderColor = UIColor.white.cgColor   
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
