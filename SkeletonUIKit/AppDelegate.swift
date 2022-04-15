//
//  AppDelegate.swift
//  SkeletonUIKit
//
//  Created by iYezan on 15/04/2022.
//

import UIKit

let appColor: UIColor = .systemTeal

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        window = UIWindow(frame: UIScreen.main.bounds)
        self.window?.rootViewController = UINavigationController(rootViewController: SkeletonTableViewController())
        window?.makeKeyAndVisible()
        return true
    }
}

