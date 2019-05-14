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
    
    
    @IBOutlet weak var Elevator: UIButton!
    @IBOutlet weak var Cafeteria: UIButton!
    
    @IBOutlet weak var Elevator2: UIButton!
    

    
    @IBOutlet weak var logout: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       RoundedButton()
        indicator.isHidden = true
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
    }
    
    func RoundedButton() {
        
       
        Elevator.layer.cornerRadius = 10
        Elevator.clipsToBounds = true
        
        Cafeteria.layer.cornerRadius = 10
        Cafeteria.clipsToBounds = true
        
        Elevator2.layer.cornerRadius = 10
        Elevator2.clipsToBounds = true
        
      
        logout.layer.cornerRadius = 10
        logout.clipsToBounds = true
        
        
        
    }
    
    
    @IBOutlet weak var indicator: UIActivityIndicatorView!
    
    
    @IBAction func Distination(_ sender: Any) {
       
        if indicator.isAnimating == true {
            indicator.isHidden = true
            indicator.stopAnimating()
            
           
        } else {
            indicator.isHidden = false
            indicator.startAnimating()
            let mainStoryboard = UIStoryboard(name: "Main", bundle: Bundle.main)
            
            guard let mainNavigationVC = mainStoryboard.instantiateViewController(withIdentifier: "ARViewController") as? ViewController else {
                return
            }
            present(mainNavigationVC, animated: true, completion: nil)
        }
        
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


    







    


