//
//  AppDelegate.swift
//  API_MVC_AlmoSwifty
//
//  Created by Rutvik Pipaliya on 02/10/23.
//

import UIKit
import Alamofire


struct Network {

    let manager = Alamofire.NetworkReachabilityManager()

    func state() {
        manager?.startListening { status in
            switch status {
            case .notReachable :
                print("not reachable")
            case .reachable(.cellular) :
                print("cellular")
            case .reachable(.ethernetOrWiFi) :
                print("ethernetOrWiFi")
            default :
                print("unknown")
            }
        }
    }
}
@main
class AppDelegate: UIResponder, UIApplicationDelegate {



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        Network().state()
      
        return true
    }
    
    

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

