//
//  Gone_Fishin_App.swift
//  Gone Fishin'
//
//  Created by Cameron Warner on 3/8/23.
//

import SwiftUI

@main
struct Gone_Fishin_App: App {
    
    @StateObject var localNotificationManager = LocalNotificationManager()
    @Environment(\.scenePhase) var scenePhase

    
    var body: some Scene {
        WindowGroup {
            finalContentView()
                .environmentObject(localNotificationManager)
                .task {
                    try? await localNotificationManager.requestAuthorization()
                }
            .onChange(of: scenePhase) { newPhase in
                switch newPhase {
                case .active:
                    print("✅ App became active")
                    Task {
                       await localNotificationManager.getCurrentSettings()
                       await localNotificationManager.getPendingRequests()
                    }
                case .inactive:
                    print("✅ App became inactive")
                case .background:
                    print("✅ App is running in the background")
                @unknown default:
                    print("🛑 Fallback for future cases")
                }
            }
        }
    }
}
