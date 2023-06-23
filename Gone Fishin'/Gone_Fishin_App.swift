//
//  Gone_Fishin_App.swift
//  Gone Fishin'
//
//  Created by Cameron Warner on 3/8/23.
//

import SwiftUI

@main
struct Gone_Fishin_App: App {
    
    //used for Local Notifications
    @StateObject var localNotificationManager = LocalNotificationManager()
    @Environment(\.scenePhase) var scenePhase

    //used for Journal Feature
    @StateObject var entryController = EntryController();
    @StateObject var entryUser = User(name: "Friend");
    
    var body: some Scene {
        WindowGroup {
            finalContentView()
//NotificationButtonTest()
//            SettingsView()
            
            //used for Journal feature
                .environmentObject(entryController)
                .environmentObject(entryUser)

                
                //used for local notifications
                .environmentObject(localNotificationManager)
        
        }
    }
}
