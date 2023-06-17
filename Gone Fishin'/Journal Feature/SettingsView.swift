//
//  SettingsView.swift
//  Gone Fishin'
//
//  Created by Cameron Warner on 5/25/23.
//

import SwiftUI

struct SettingsView: View {
    @State private var timeReminder = Date.now
    @State private var enableNotifications = true
    @State private var enableLN = false
    @EnvironmentObject var entryUser: User
    @EnvironmentObject var lnManager: LocalNotificationManager
    @Environment(\.scenePhase) var scenePhase
    @State var presentSheet = false


    
    var body: some View {
        NavigationStack{
            VStack{
                List {
                    
                    Toggle("Enable Notifications", isOn: $enableNotifications)
                    
                    if enableNotifications {
                        if lnManager.isGranted{
                            
                            //                    Button("+")
                            //                    {
                            //                        Task {
                            //                            var localNotification = LocalNotification(
                            //                                identifier: UUID().uuidString,
                            //                                title: "Gone Fishin'",
                            //                                body: "Embrace the power of words and let inspiration find its way into your heart. Here's a brief moment of wisedom to uplift your spirit and ignite your inner fire.",
                            //                                timeInterval: 5,
                            //                                repeats: false // Must have a timeInterval of < 60 = true
                            //                            )
                            //                            localNotification.subtitle = "Stay Inspired"
                            //                            localNotification.bundleImageName = "Stewart.png"
                            //                            //                            localNotification.userInfo = ["nextView" : NextView.renew.rawValue]
                            //                            localNotification.categoryIdentifier = "snooze"
                            //                            await lnManager.schedule(localNotification: localNotification)
                            //                        }//End of Task 1
                            //
                            //                        Task {
                            //                            var localNotification = LocalNotification(
                            //                                identifier: UUID().uuidString,
                            //                                title: "Test Gone Fishin'",
                            //                                body: "Embrace the power of words and let inspiration find its way into your heart. Here's a brief moment of wisedom to uplift your spirit and ignite your inner fire.",
                            //                                timeInterval: 10,
                            //                                repeats: false // Must have a timeInterval of < 60 = true
                            //                            )
                            //                            localNotification.subtitle = "Stay Inspired"
                            //                            localNotification.bundleImageName = "Stewart.png"
                            //                            //                            localNotification.userInfo = ["nextView" : NextView.renew.rawValue]
                            //                            localNotification.categoryIdentifier = "snooze"
                            //                            await lnManager.schedule(localNotification: localNotification)
                            //                        }//End of Task 2
                            //                    }
                            //                    //                .buttonStyle(MainButton())
                            //                } else {
                            //                    JournalIcon()
                            //                }// End of if-else
                            //            }//End of Enable Notifications
                            
                            
                            
                            
                            
                            Button(

                                action: {
                                    
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
                                        localNotification.categoryIdentifier = "snooze"
                                        await lnManager.schedule(localNotification: localNotification)
                                    }//End of Task 2
                                },
                                label: {

                                    Text("Press to recieve notifications")
                                        .background(Color.blue)
                                        .foregroundColor(Color.white)
                                        .frame(
                                            width: 300,
                                            height: 40
                                        )
                                }// End of Label
                            )// End of Button
//                            .disabled(timeReminder == Date.now)
                            .background(Color.blue)
                            .cornerRadius(8)
                            .padding([.top, .bottom], 16)
                        }// End of local notification manager
                        
                    }// //End of Enable Notifications
                }// End of List
                .colorScheme(.dark)
                .foregroundColor(.white)
                }// End of VStack
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

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
            .environmentObject(User(name: "Username"))
            .environmentObject(LocalNotificationManager())
    }
}
