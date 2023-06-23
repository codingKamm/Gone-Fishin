//
//  SettingsView.swift
//  Gone Fishin'
//
//  Created by Cameron Warner on 5/25/23.
//

import SwiftUI
import UserNotifications

import Foundation
import NotificationCenter


struct SettingsView: View {
//    @State private var timeReminder = Date.now
    @State private var enableNotifications = false
    @State var enableLN = false
    @EnvironmentObject var entryUser: User
    @EnvironmentObject var lnManager: LocalNotificationManager
    @Environment(\.scenePhase) var scenePhase
    @State var presentSheet = false
    @StateObject var localNotificationManager = LocalNotificationManager()

    
//Alert after clicking Notifications
    @State private var showingAlert = false
    

    
    var body: some View {
        NavigationStack{
            ZStack{
                VStack(alignment: .leading){
                    Text("Settings")
                        .foregroundColor(.white)
                        .font(.system(size: 40, design: .serif))
                        .bold()
                        .padding()
                    VStack(alignment: .center){
                        List {
                            //                        Toggle("Enable Notifications", isOn: $enableNotifications)
                            //                        if enableNotifications {
                            if lnManager.isGranted{
                                Button(
                                    action: {
                                        showingAlert = true
                                        
                                        Task {
                                            var localNotification = LocalNotification(
                                                identifier: UUID().uuidString,
                                                title: "Gone Fishin' 🎣",
                                                body: "Embrace the power of words and let inspiration find its way into your heart. Here's a brief moment of wisedom to uplift your spirit and ignite your inner fire.",
                                                timeInterval: 5, // = 5secs
                                                repeats: false // Must have a timeInterval of < 60 = true
                                            )
                                            localNotification.subtitle = "Stay Inspired"
                                            //                                            localNotification.bundleImageName = "Stewart.png"
//                                            localNotification.categoryIdentifier = "snooze"
                                            await lnManager.schedule(localNotification: localNotification)
                                        }//End of Task 1
                                        
                                        Task {
                                            var localNotification = LocalNotification(
                                                identifier: UUID().uuidString,
                                                title: "Gone Fishin' 🎣",
                                                body: "Just because your best is not good enough, doesn’t mean it can’t be.",
                                                timeInterval: 432_000, // = 5 days
                                                repeats: true // Must have a timeInterval of < 60 = true
                                            )
                                            localNotification.subtitle = "Never Stop Trying!"
                                            //                                            localNotification.bundleImageName = "Stewart.png"
//                                            localNotification.categoryIdentifier = "snooze"
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
                                            //                                            localNotification.bundleImageName = "Stewart.png"
//                                            localNotification.categoryIdentifier = "snooze"
                                            await lnManager.schedule(localNotification: localNotification)
                                        }//End of Task 3
                                        
                                        Task {
                                            var localNotification = LocalNotification(
                                                identifier: UUID().uuidString,
                                                title: "Gone Fishin' 🎣",
                                                body: "Imposters Syndrome is a fraudulent fear of failure.",
                                                timeInterval: 259_200, // = every 3 days
                                                repeats: true // Must have a timeInterval of < 60 = true
                                            )
                                            localNotification.subtitle = "Failure = Quitting"
                                            //                                            localNotification.bundleImageName = "Stewart.png"
//                                            localNotification.categoryIdentifier = "snooze"
                                            await lnManager.schedule(localNotification: localNotification)
                                        }//End of Task 4
                                        
                                        Task {
                                            var localNotification = LocalNotification(
                                                identifier: UUID().uuidString,
                                                title: "Gone Fishin' 🎣",
                                                body: "Self-reliance is recycled hope",
                                                timeInterval: 604_800, // 1 week
                                                repeats: true // Must have a timeInterval of < 60 = true
                                            )
                                            localNotification.subtitle = "Keep Hope"
                                            //                                            localNotification.bundleImageName = "Stewart.png"
//                                            localNotification.categoryIdentifier = "snooze"
                                            await lnManager.schedule(localNotification: localNotification)
                                        }//End of Task 5
                                        
                                        Task {
                                            var localNotification = LocalNotification(
                                                identifier: UUID().uuidString,
                                                title: "Gone Fishin' 🎣",
                                                body: "Pulling yourself up means reaching for help",
                                                timeInterval: 1_209_600, // 2 weeks
                                                repeats: true // Must have a timeInterval of < 60 = true
                                            )
                                            localNotification.subtitle = "Be willing to ask the help you need"
                                            //                                            localNotification.bundleImageName = "Stewart.png"
//                                            localNotification.categoryIdentifier = "snooze"
                                            await lnManager.schedule(localNotification: localNotification)
                                        }//End of Task 6
                                        
                                        Task {
                                            var localNotification = LocalNotification(
                                                identifier: UUID().uuidString,
                                                title: "Gone Fishin' 🎣",
                                                body: "Enjoy each mistake as you work towards becoming great",
                                                timeInterval: 1_036_800, // 12 days
                                                repeats: true // Must have a timeInterval of < 60 = true
                                            )
                                            localNotification.subtitle = "You are more than the mistakes you make"
                                            //                                            localNotification.bundleImageName = "Stewart.png"
//                                            localNotification.categoryIdentifier = "snooze"
                                            await lnManager.schedule(localNotification: localNotification)
                                        }//End of Task 7
                                        
                                        Task {
                                            var localNotification = LocalNotification(
                                                identifier: UUID().uuidString,
                                                title: "Gone Fishin' 🎣",
                                                body: "Luck is when opportunity meets preparation at the intersection of determination",
                                                timeInterval: 1_728_000, // 20 days
                                                repeats: true // Must have a timeInterval of < 60 = true
                                            )
                                            localNotification.subtitle = "Today is the day"
                                            //                                            localNotification.bundleImageName = "Stewart.png"
//                                            localNotification.categoryIdentifier = "snooze"
                                            await lnManager.schedule(localNotification: localNotification)
                                        }//End of Task 8
                                        
                                        Task {
                                            var localNotification = LocalNotification(
                                                identifier: UUID().uuidString,
                                                title: "Gone Fishin' 🎣",
                                                body: "Remember where you started and realize how far you’ve came",
                                                timeInterval: 2_678_400, // 31 days
                                                repeats: true // Must have a timeInterval of < 60 = true
                                            )
                                            localNotification.subtitle = "I notice your progress"
                                            //                                            localNotification.bundleImageName = "Stewart.png"
//                                            localNotification.categoryIdentifier = "snooze"
                                            await lnManager.schedule(localNotification: localNotification)
                                        }//End of Task 9
                                        
                                        Task {
                                            var localNotification = LocalNotification(
                                                identifier: UUID().uuidString,
                                                title: "Gone Fishin' 🎣",
                                                body: "Like a cast of the reel, I’m hooked on each line.",
                                                timeInterval: 115_200, // 32 hrs
                                                repeats: true // Must have a timeInterval of < 60 = true
                                            )
                                            localNotification.subtitle = "Did you journal today?"
                                            //                                            localNotification.bundleImageName = "Stewart.png"
//                                            localNotification.categoryIdentifier = "snooze"
                                            await lnManager.schedule(localNotification: localNotification)
                                        }//End of Task 10
                                    },
                                    label: {
                                        Text("Press to recieve notifications")
                                            .background(Color.blue)
                                            .foregroundColor(Color.white)
                                            .frame(width: 300,height: 40)
                                    }// End of Label
                                    
                                    
                                )// End of Button
                                .background(Color.blue)
                                .cornerRadius(8)
                                .padding([.top, .bottom], 16)
                                .alert("Expect Notifications Soon", isPresented: $showingAlert){
                                    Button("OK", role: .cancel){}
                                }
                                //                                .hapticFeedback(feedbackStyle:.medium)
                            }// End of local notification manager
                            //                        }// //End of Enable Notifications
                        }// End of List
                        .preferredColorScheme(.dark)
                        .foregroundColor(.white)
                    }// End of VStack
//                    .hapticFeedback(feedbackStyle:.medium)

                    }//End of VStack

                }// End of ZStack
            }// End of Nav. Stack
//        .navigationTitle("Settings")
        .edgesIgnoringSafeArea(.all)
        .preferredColorScheme(.dark)

        .task {
            try? await lnManager.requestAuthorization()
        }
//        .onChange(of: scenePhase) { newValue in
//            if newValue == .active {
//                Task {
//                    await lnManager.getCurrentSettings()
//                    await lnManager.getPendingRequests()
//                }
//            }
//        }
      
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

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
            .environmentObject(User(name: "Username"))
            .environmentObject(LocalNotificationManager())
           
    }
}
