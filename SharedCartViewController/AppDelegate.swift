//
//  AppDelegate.swift
//  SharedCartViewController
//
//  Created by Guang Lei on 2020/1/9.
//  Copyright © 2020 Guang Lei. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        let tabController = TabBarViewController()
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = tabController
        window?.backgroundColor = .white
        window?.makeKeyAndVisible()
        
        return true
    }
}

