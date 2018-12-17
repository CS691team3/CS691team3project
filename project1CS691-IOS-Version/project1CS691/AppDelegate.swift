//
//  AppDelegate.swift
//  project1CS691
//
//  Created by Kenneth Okereke on 12/9/18.
//  Copyright © 2018 Kenneth Okereke. All rights reserved.
//

import UIKit
import Firebase

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        FirebaseApp.configure()
        
        return true
    }





}

