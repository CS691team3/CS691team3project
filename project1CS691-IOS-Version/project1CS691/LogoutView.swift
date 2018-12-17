//
//  LogoutView.swift
//  project1CS691
//
//  Created by Kenneth Okereke on 12/12/18.
//  Copyright © 2018 Kenneth Okereke. All rights reserved.
//

import UIKit
import FirebaseAuth

class LogoutView: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func logOut(_ sender: Any) {
        do {
            try Auth.auth().signOut()
            let vc = storyboard?.instantiateViewController(withIdentifier: "SignOut") as? ViewController
            
            self.navigationController?.pushViewController(vc!, animated: true)
            
            
            
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
