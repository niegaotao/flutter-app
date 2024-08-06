//
//  AppDelegate.swift
//  iOS
//
//  Created by 聂高涛 on 2022/2/18.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        self.window = UIWindow(frame: UIScreen.main.bounds)
        self.window?.rootViewController = UINavigationController(rootViewController: EXAppViewController())
        self.window?.makeKeyAndVisible()
        
        return true
    }
}

