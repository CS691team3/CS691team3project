//
//  signinViewController.swift
//  CS691Project
//
//  Created by Kenneth Okereke on 5/7/19.
//  Copyright © 2019 Kenneth Okereke. All rights reserved.
//

import UIKit
import FirebaseAuth

class signinViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var emailInput: UITextField!
    
    @IBOutlet weak var passwordInput: UITextField!
    
    
    @IBOutlet weak var login_Button: UIButton!
    
    @IBOutlet weak var lblError: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        login_Button.layer.cornerRadius = 10
        login_Button.clipsToBounds = true
        // Do any additional setup after loading the view, typically from a nib.
        textfielddelegate()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        //Saves users data
        if Auth.auth().currentUser != nil {
            self.presentLoginScreen()
        }
        
        
    }
    
    func textfielddelegate() {
        self.emailInput.delegate = self
        self.passwordInput.delegate = self
        
    }
    
    //Hide KEyboard
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    //Presses KEy
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
       emailInput.resignFirstResponder()
        passwordInput.resignFirstResponder()
        return (true)
    }
    
    
    
    @IBAction func createAccount(_ sender: Any) {
        
        let alert = UIAlertController(title: "Sign up", message: "Click the back button and sign up", preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: "Ok", style: .default, handler: nil)
        
        alert.addAction(okAction)
        
        self.present(alert, animated: true, completion: nil)
        
    }
    
    
    @IBAction func forgetpassword(_ sender: Any) {
        
        let alert = UIAlertController(title: "Forget Password", message: "We will send you a new one check your email", preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: "Ok", style: .default, handler: nil)
        
        alert.addAction(okAction)
        
        self.present(alert, animated: true, completion: nil)
    }
    
    
    @IBAction func loginTapped(_ sender: Any) {
        if let email = emailInput.text, let password = passwordInput.text {
            Auth.auth().signIn(withEmail: email, password: password) { (user, error) in
                if user != nil {
                    print("User has Signed up!")
                    self.presentLoginScreen()
                    
                }
                
                if email.isEmpty || password.isEmpty {
                    
                    
                    self.handleError(error!)
                    
                    
                } else if error != nil {
                    print(":{")
                    
                    
                    self.handleError(error!)
                    return
                    
                }
                
                
                
                
                
            }
        }
    }
    
    func presentLoginScreen() {
        let storyboard:UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let loggedVC:PlacesViewController = storyboard.instantiateViewController(withIdentifier: "PlacesViewController") as! PlacesViewController
        self.present(loggedVC, animated: true, completion: nil)
        
    }
    
    func handleError(_ error: Error) {
        if let errorCode = AuthErrorCode(rawValue: error._code) {
            print(errorCode.errorMessage1)
            let alert = UIAlertController(title: "Error", message: "\(errorCode.errorMessage1)", preferredStyle: .alert)
            
            let okAction = UIAlertAction(title: "Ok", style: .default, handler: nil)
            
            alert.addAction(okAction)
            
            self.present(alert, animated: true, completion: nil)
            
        }
    }
    
    
    
}

extension AuthErrorCode {
    var errorMessage1: String {
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
