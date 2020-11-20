//
//  AppDelegate.swift
//  CoordinatorAppDemo
//
//  Created by AbeerSharaf on 11/20/20.
//  Copyright © 2020 Abeer. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    // Make the first coordinator with a strong reference
    var fisrtCoordinator : FirstCoordinator?
    
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = UINavigationController()
        
        // Initialise the first coordinator with the main navigation controller
        fisrtCoordinator = FirstCoordinator(navigationController: window?.rootViewController as! UINavigationController)
        
        // The start method will actually display the main view
        fisrtCoordinator?.start()
        
        window?.makeKeyAndVisible()
        return true
    }
    
    
    
    
}

