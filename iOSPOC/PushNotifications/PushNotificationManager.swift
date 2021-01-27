//
//  PushNotificationManager.swift
//  iOSPOC
//
//  Created by Rahul Goel on 19/06/19.
//  Copyright © 2019 Rahul Goel. All rights reserved.
//

import UserNotifications


/*
 
 Remote Notification PayLoad :
 
 Silent push notifications :
    Can wake your app up silently to perform some tasks in the background.
    Your app won’t need to constantly poll for data. You can send it a silent push notification whenever new data is available.
         {
            "aps": {
            "content-available": 1
            }
         }
 
 Interactive Notifications :
 

 */
final class PushNotificationsManager{
    
    static var shared:PushNotificationsManager = PushNotificationsManager()
    
    private init() {
    }
    
    final func registerForPushNotifications() {
        UNUserNotificationCenter.current() 
            .requestAuthorization(options: [.alert, .sound, .badge, .carPlay]) { [weak self]
                granted, error in
                print("Permission granted: \(granted)")
                guard granted else { return }
                self?.getNotificationSettings()
        }
    }
    
    final func getNotificationSettings() {
        UNUserNotificationCenter.current().getNotificationSettings { settings in
            print("Notification settings: \(settings)")
            
            guard settings.authorizationStatus == .authorized else { return }
            DispatchQueue.main.async {
                UIApplication.shared.registerForRemoteNotifications()
            }
        }
    }
}
