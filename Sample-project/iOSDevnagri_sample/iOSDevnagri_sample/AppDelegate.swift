//
//  AppDelegate.swift
//  iOSDevnagri_sample
//
//  Created by Vijay Jangid on 29/11/22.
//

import UIKit
import DevnagriSdk

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        print("SDK initilizing")
        let startDate = Date()
        DevnagriSDK.shared.initSdk(apiKey: "devnagri_9741fda07b8c11ed997a02bf838402f8") { isInitialized, message in
            
            let diffrence = Date().timeIntervalSince1970 - startDate.timeIntervalSince1970
            print("Sdk initilized in just \(String(format: "%.2f", diffrence)) sec" )
        }
        return true
    }
}

