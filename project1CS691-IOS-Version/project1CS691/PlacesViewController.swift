//
//  PlacesViewController.swift
//  project1CS691
//
//  Created by Kenneth Okereke on 12/9/18.
//  Copyright © 2018 Kenneth Okereke. All rights reserved.
//

import UIKit
import FirebaseAuth
import AVFoundation
import AVKit




class PlacesViewController: UIViewController {
    
    @IBOutlet weak var button_One: UIButton!
    
    @IBOutlet weak var button_Two: UIButton!
    
    
    @IBOutlet weak var button_Three: UIButton!
    
    @IBOutlet weak var button_Four: UIButton!
    
    @IBOutlet weak var logOut: UIButton!
    
    
    @IBOutlet weak var videoBackground: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        RoundedButton()
        
     
       
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
       
         
      
    }
    
    
    
    func RoundedButton() {
        button_One.layer.cornerRadius = 10
        button_One.clipsToBounds = true
        
        button_Two.layer.cornerRadius = 10
        button_One.clipsToBounds = true
        
        button_Three.layer.cornerRadius = 10
        button_Three.clipsToBounds = true
        
        button_Four.layer.cornerRadius = 10
        button_Four.clipsToBounds = true
        
        
        logOut.layer.cornerRadius = 10
        logOut.clipsToBounds = true
    }
    
    
    
    
    
    
    
        
    @IBAction func logOut(_ sender: Any) {
        do {
            try Auth.auth().signOut()
            self.dismiss(animated: true, completion: nil)
            
            
            
        } catch {
            print("There was a problem logging out")
            
        }
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



    


