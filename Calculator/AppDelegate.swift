//
//  AppDelegate.swift
//  Calculator
//
//  Created by Cristian Bermudez Martinez on 15/2/24.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

  var window: UIWindow?

  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
    
    // Setup
    setupView()
    
    return true
  }
  
  // MARK: - Private Methods
  
  private func setupView() {
    window = UIWindow(frame: UIScreen.main.bounds)
    let vc = HomeViewController()
    window?.rootViewController = vc
    window?.makeKeyAndVisible()
  }

}

