//
//  AppDelegate.swift
//  ViperTest
//
//  Created by ground zero on 25/07/2020.
//  Copyright © 2020 TrotterIndependent. All rights reserved.
//

import UIKit


@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

        let controller = Router.createModule()

        let navigationController = UINavigationController()
        navigationController.viewControllers = [controller]

        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = navigationController
        window?.makeKeyAndVisible()

        return true
    }
}
