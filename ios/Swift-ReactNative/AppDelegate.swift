//
//  AppDelegate.swift
//  Swift-ReactNative
//
//  Created by Tomas Sykora, jr. on 13/11/2018.
//  Copyright © 2018 Tomas Sykora, jr. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate, UISplitViewControllerDelegate {
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        let window = UIWindow(frame: UIScreen.main.bounds)
        window.rootViewController = UINavigationController(rootViewController: MasterViewController())
        window.makeKeyAndVisible()
        self.window = window
        return true
    }

}

