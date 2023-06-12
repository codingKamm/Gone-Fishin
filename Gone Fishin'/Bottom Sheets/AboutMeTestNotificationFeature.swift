//
//  AboutMeTestNotificationFeature.swift
//  Gone Fishin'
//
//  Created by Cameron Warner on 5/31/23.
//

import SwiftUI

struct AboutMeTestNotificationFeature: View {
    @EnvironmentObject var lnManager: LocalNotificationManager
    @Environment(\.scenePhase) var scenePhase
    @State private var timeReminder = Date.now
    

    
    var body: some View {
        NavigationStack{
            VStack{
//                DatePicker("", selection: $timeReminder, displayedComponents: .hourAndMinute)
                
                Button(action: {
                    let content = UNMutableNotificationContent()
                    content.title = "Good day!"
                    content.subtitle = "Time to record your daily journal entry."
                    content.sound = UNNotificationSound.default
                    
                    let calendar = Calendar.current
//                    let day = calendar.component(.day, from: timeReminder)
//                    let hour = calendar.component(.hour, from: timeReminder)
                    let minute = calendar.component(.minute, from: timeReminder)
                    let second = calendar.component(.second, from: timeReminder)
                    
                    var dateC = DateComponents()
//                    dateC.day = day
//                    dateC.hour = hour
                    dateC.minute = minute
                    dateC.second = second

                    // show this notification five seconds from now
                    let trigger =
                    UNCalendarNotificationTrigger(dateMatching: dateC, repeats: true)
                    
                    // choose a random identifier
                    let request = UNNotificationRequest(identifier: UUID().uuidString, content: content, trigger: trigger)

                    // add our notification request
                    UNUserNotificationCenter.current().add(request)
                },
                label: {
                    NavigationLink(destination: JournalMainView()){
                        Text ("Test New View")
                            .foregroundColor(.white)
                    }
                }
            ).disabled(timeReminder == Date.now)
                .background(Color.blue)
                .cornerRadius(8)
                .padding([.top, .bottom], 16)
                
//                if lnManager.isGranted{
//                   Button("🎣"){
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
//                        }
//                    }
//                }// End of is.Granted
//
                  
            }// End of VStack
        }// End of Nav. Stack
    }
}

struct AboutMeTestNotificationFeature_Previews: PreviewProvider {
    static var previews: some View {
        AboutMeTestNotificationFeature()
            .environmentObject(LocalNotificationManager())
    }
}
