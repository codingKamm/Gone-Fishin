//
//  testNotificationToggleView.swift
//  Gone Fishin'
//
//  Created by Cameron Warner on 6/13/23.
//

import SwiftUI

struct testNotificationToggleView: View {
    @EnvironmentObject var lnManager: LocalNotificationManager
    @Environment(\.scenePhase) var scenePhase

    
    var body: some View {
        NavigationStack{
            VStack{
        if lnManager.isGranted{
           
//            Button("Notifications \(testToggleView())")
            Button("Notifications")
            {
            Task {
                var localNotification = LocalNotification(
                    identifier: UUID().uuidString,
                    title: "Gone Fishin'",
                    body: "Embrace the power of words and let inspiration find its way into your heart. Here's a brief moment of wisedom to uplift your spirit and ignite your inner fire.",
                    timeInterval: 5,
                    repeats: false // Must have a timeInterval of < 60 = true
                )
                localNotification.subtitle = "Stay Inspired"
                localNotification.bundleImageName = "Stewart.png"
                //                            localNotification.userInfo = ["nextView" : NextView.renew.rawValue]
                localNotification.categoryIdentifier = "snooze"
                await lnManager.schedule(localNotification: localNotification)
            }//End of Task 1
            
            Task {
                var localNotification = LocalNotification(
                    identifier: UUID().uuidString,
                    title: "Test Gone Fishin'",
                    body: "Embrace the power of words and let inspiration find its way into your heart. Here's a brief moment of wisedom to uplift your spirit and ignite your inner fire.",
                    timeInterval: 10,
                    repeats: false // Must have a timeInterval of < 60 = true
                )
                localNotification.subtitle = "Stay Inspired"
                localNotification.bundleImageName = "Stewart.png"
                //                            localNotification.userInfo = ["nextView" : NextView.renew.rawValue]
                localNotification.categoryIdentifier = "snooze"
                await lnManager.schedule(localNotification: localNotification)
            }//End of Task 2
        }
        //                .buttonStyle(MainButton())
    } else {
        JournalIcon()
        
        //                    Text("🎣")
        //                        .font(.largeTitle)
    }// End of Local Notification feature
    }//End of VStack
}// End of Nav. Stack
            .task {
                try? await lnManager.requestAuthorization()
            }
            .onChange(of: scenePhase) { newValue in
                if newValue == .active {
                    Task {
                        await lnManager.getCurrentSettings()
                        await lnManager.getPendingRequests()
                    }
                }
            }
        
    }
}

struct testNotificationToggleView_Previews: PreviewProvider {
    static var previews: some View {
        testNotificationToggleView()
            .environmentObject(LocalNotificationManager())

    }
}
