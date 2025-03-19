//
//  AppDelegate.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import Evergage

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        let evergage = Evergage.sharedInstance()
        
        evergage.userId = "theAuthenticatedUserId"
        

        // If using Firebase Messaging, be sure to uncomment and do these before starting Evergage:
        // FirebaseApp.configure()
        // Messaging.messaging().delegate = self // Or whatever your delegate is

        // Start Evergage with your Evergage Configuration:
        evergage.start { (clientConfigurationBuilder) in
            clientConfigurationBuilder.account = "sundoginteractive"
            clientConfigurationBuilder.dataset = "rj_prft_demo"
            clientConfigurationBuilder.usePushNotifications = true // If you want to use Evergage push notification campaigns
            clientConfigurationBuilder.useDesignMode = true 
        }
        // Override point for customization after application launch.
        return true
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
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

