//
//  SignupView.swift
//  project1CS691
//
//  Created by Kenneth Okereke on 12/16/18.
//  Copyright © 2018 Kenneth Okereke. All rights reserved.
//

import UIKit
import FirebaseAuth

class SignupView: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var nameInput: UITextField!
    @IBOutlet weak var emailInput: UITextField!
    
    @IBOutlet weak var passwordInput: UITextField!
    
    @IBOutlet weak var phone_Num: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
      self.nameInput.delegate = self
        self.emailInput.delegate = self
        self.passwordInput.delegate = self
        self.phone_Num.delegate = self
        
        // Do any additional setup after loading the view.
    }
    
    
    //Hide KEyboard
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    //Presses KEy
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        nameInput.resignFirstResponder()
        emailInput.resignFirstResponder()
        passwordInput.resignFirstResponder()
        phone_Num.resignFirstResponder()
        return (true)
    }
    
    @IBAction func createAccount(_ sender: Any) {
      
        
     //Add alert Go back sign up
        if let email = emailInput.text, let password = passwordInput.text {
            Auth.auth().createUser(withEmail: email, password: password) { (user, error) in
                if user != nil && error == nil {
                    print("User has Signed up!")
                    let alert = UIAlertController(title: "Congradulations you signed up", message: "Click the back button and sign in", preferredStyle: .alert)
                    let okAction = UIAlertAction(title: "Ok", style: .default, handler: nil)
                    
                    alert.addAction(okAction)
                    
                    self.present(alert, animated: true, completion: nil)
                    
                    
                }
                
                
                
                
                if error != nil {
                    print(":{")
                    //
                    self.handleError(error!)
                    self.MoreErrors()
                    return
                    
                }
                
            
                
                
            }
        }
        
        
       
        
    }
    
    
   
    
    func handleError(_ error: Error) {
        if let errorCode = AuthErrorCode(rawValue: error._code) {
            print(errorCode.errorMessage)
            let alert = UIAlertController(title: "Error", message: "\(errorCode.errorMessage)", preferredStyle: .alert)
            
            let okAction = UIAlertAction(title: "Ok", style: .default, handler: nil)
            
            alert.addAction(okAction)
            
            self.present(alert, animated: true, completion: nil)
            
        }
    }
    
    
    func MoreErrors() {
        if nameInput.text == nil && phone_Num.text == nil {
            let alert = UIAlertController(title: "Error", message: "Invalid credentials", preferredStyle: .alert)
            
            let okAction = UIAlertAction(title: "Ok", style: .default, handler: nil)
            
            alert.addAction(okAction)
            
            self.present(alert, animated: true, completion: nil)
            
        }
    }
    
    

    

}


extension AuthErrorCode {
    var errorMessage: String {
        switch self {
        case .emailAlreadyInUse:
            return "The email is already in use with another account"
        case .userNotFound:
            return "Account not found for the specified user. Please check and try again"
        case .userDisabled:
            return "Your account has been disabled. Please contact support."
        case .invalidEmail, .invalidSender, .invalidRecipientEmail:
            return "Please enter a valid email"
        case .networkError:
            return "Network error. Please try again."
        case.missingEmail:
            return "Missing either a email or password"
        case .weakPassword:
            return "Either your missing a Email , password or your password is to weak must have at least six or more letters"
        case .missingAppCredential:
            return "must input email or password"
        case .wrongPassword:
            return "password is wrong try again"
      
            
            
            
        default:
            return "Must have an email or password"
        }
    }
}

