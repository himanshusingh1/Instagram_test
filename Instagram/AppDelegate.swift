//
//  AppDelegate.swift
//  Instagram
//
//  Created by craterzone on 04/02/21.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        let loginViewController = UIStoryboard(name: "Main", bundle: .main).instantiateViewController(withIdentifier: "LoginViewController") as! LoginViewController
        loginViewController.uiController = LoginScreenInternal()
        let Nav = UINavigationController.init(rootViewController: loginViewController)
        AppDelegate.shared().window?.rootViewController = Nav
        AppDelegate.shared().window?.makeKeyAndVisible()
        return true
    }
    class func shared() -> AppDelegate{
        return UIApplication.shared.delegate as! AppDelegate
    }
    
}

