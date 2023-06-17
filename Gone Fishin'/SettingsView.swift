//
//  SettingsView.swift
//  Gone Fishin'
//
//  Created by Cameron Warner on 5/25/23.
//

import SwiftUI

struct SettingsView: View {
    @State private var timeReminder = Date.now
    @State private var enableNotifications = false
    @State private var enableLN = false
    @EnvironmentObject var entryUser: User
    @EnvironmentObject var lnManager: LocalNotificationManager
    @Environment(\.scenePhase) var scenePhase
    @State var presentSheet = false


    
    var body: some View {
        NavigationStack{
            ZStack{
                VStack(alignment: .leading){
                    Text("Settings") //XL Bold
                        .foregroundColor(.white)
                        .font(.system(size: 40, design: .serif))
                        .bold()
                        .padding()
                    List {
                        Toggle("Enable Notifications", isOn: $enableNotifications)
                        if enableNotifications {
                            if lnManager.isGranted{
                                Button(
                                    action: {
                                        Task {
                                            var localNotification = LocalNotification(
                                                identifier: UUID().uuidString,
                                                title: "Gone Fishin' 🎣",
                                                body: "Embrace the power of words and let inspiration find its way into your heart. Here's a brief moment of wisedom to uplift your spirit and ignite your inner fire.",
                                                timeInterval: 5, // = 5sec
                                                repeats: false // Must have a timeInterval of < 60 = true
                                            )
                                            localNotification.subtitle = "Stay Inspired"
                                            localNotification.bundleImageName = "Stewart.png"
                                            localNotification.categoryIdentifier = "snooze"
                                            await lnManager.schedule(localNotification: localNotification)
                                        }//End of Task 1
                                        
                                        Task {
                                            var localNotification = LocalNotification(
                                                identifier: UUID().uuidString,
                                                title: "Gone Fishin' 🎣",
                                                body: "Just because your best is not good enough, doesn’t mean it can’t be.",
                                                timeInterval: 14_400, // = 4hr, 14_400sec
                                                repeats: false // Must have a timeInterval of < 60 = true
                                            )
                                            localNotification.subtitle = "Never Stop Trying!"
                                            localNotification.bundleImageName = "Stewart.png"
                                            localNotification.categoryIdentifier = "snooze"
                                            await lnManager.schedule(localNotification: localNotification)
                                        }//End of Task 2
                                        
                                        Task {
                                            var localNotification = LocalNotification(
                                                identifier: UUID().uuidString,
                                                title: "Gone Fishin' 🎣",
                                                body: "Overcoming self-doubt means finding your self-worth",
                                                timeInterval: 28_800, // = 8hrs
                                                repeats: false // Must have a timeInterval of < 60 = true
                                            )
                                            localNotification.subtitle = "You Are More Than Enough"
                                            localNotification.bundleImageName = "Stewart.png"
                                            localNotification.categoryIdentifier = "snooze"
                                            await lnManager.schedule(localNotification: localNotification)
                                        }//End of Task 3
                                        
                                        Task {
                                            var localNotification = LocalNotification(
                                                identifier: UUID().uuidString,
                                                title: "Gone Fishin' 🎣",
                                                body: "Imposters Syndrome is a fraudulent fear of failure.",
                                                timeInterval: 259_200, // = every 72hrs
                                                repeats: true // Must have a timeInterval of < 60 = true
                                            )
                                            localNotification.subtitle = "Failure = Quitting"
                                            localNotification.bundleImageName = "Stewart.png"
                                            localNotification.categoryIdentifier = "snooze"
                                            await lnManager.schedule(localNotification: localNotification)
                                        }//End of Task 4
                                        
                                        Task {
                                            var localNotification = LocalNotification(
                                                identifier: UUID().uuidString,
                                                title: "Test Gone Fishin' 🎣",
                                                body: "Embrace the power of words and let inspiration find its way into your heart. Here's a brief moment of wisedom to uplift your spirit and ignite your inner fire.",
                                                timeInterval: 28_800, // 60sec = 1min, , 1hr = 3_600sec, 8hrs = 28_800
                                                //make every 72hrs
                                                repeats: true // Must have a timeInterval of < 60 = true
                                            )
                                            localNotification.subtitle = "Stay Inspired"
                                            localNotification.bundleImageName = "Stewart.png"
                                            localNotification.categoryIdentifier = "snooze"
                                            await lnManager.schedule(localNotification: localNotification)
                                        }//End of Task 5
                                        
                                        Task {
                                            var localNotification = LocalNotification(
                                                identifier: UUID().uuidString,
                                                title: "Test Gone Fishin' 🎣",
                                                body: "Embrace the power of words and let inspiration find its way into your heart. Here's a brief moment of wisedom to uplift your spirit and ignite your inner fire.",
                                                timeInterval: 28_800, // 60sec = 1min, , 1hr = 3_600sec, 8hrs = 28_800
                                                //make every 72hrs
                                                repeats: true // Must have a timeInterval of < 60 = true
                                            )
                                            localNotification.subtitle = "Stay Inspired"
                                            localNotification.bundleImageName = "Stewart.png"
                                            localNotification.categoryIdentifier = "snooze"
                                            await lnManager.schedule(localNotification: localNotification)
                                        }//End of Task 6
                                    },
                                    label: {
//                                        Button(""){
//
//                                        }
//                                        Text("Press to recieve notifications")
//                                            .background(Color.blue)
//                                            .foregroundColor(Color.white)
//                                            .frame(
//                                                width: 300,
//                                                height: 40
//                                            )
                                    }// End of Label
                                )// End of Button
//                                .background(Color.blue)
//                                .cornerRadius(8)
//                                .padding([.top, .bottom], 16)
                            }// End of local notification manager
                        }// //End of Enable Notifications
                    }// End of List
                    .preferredColorScheme(.dark)
                    .foregroundColor(.white)
//
//                    Text("Settings") //XL Bold
//                        .foregroundColor(.white)
//                        .font(.system(size: 40, design: .serif))
//                        .bold()
//
//                        .toolbar {
//                            ToolbarItem(placement: .navigationBarLeading) {
//                                Text("Settings")
//                                    .font(.largeTitle)
//                                    .foregroundColor(.white)
//                            }
//
//                        }// End of Toolbar
                    }//End of VStack
                }// End of ZStack
            }// End of Nav. Stack
//        .navigationTitle("Settings")
        .edgesIgnoringSafeArea(.all)
        .preferredColorScheme(.dark)

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

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
            .environmentObject(User(name: "Username"))
            .environmentObject(LocalNotificationManager())
    }
}
