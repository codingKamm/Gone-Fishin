//
//  NotificationButtonTest.swift
//  Gone Fishin'
//
//  Created by Cameron Warner on 5/30/23.
//

import SwiftUI

struct NotificationButtonTest: View {
    @EnvironmentObject var lnManager: LocalNotificationManager
    @Environment(\.scenePhase) var scenePhase
    @State var presentSheet = false
    @State private var timeReminder = Date.now


    
    var body: some View {
        NavigationStack{
            VStack{
                if lnManager.isGranted{
                    
                    Button(action: {
                        
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
                        }
                        
                    },
                           label: {
                        NavigationLink(destination: JournalMainView()){
                            Text ("Test New View")
                                .foregroundColor(.white)
                        }
                    }
                    )
//                    .disabled(timeReminder == Date.now)
//                        .background(Color.blue)
//                        .cornerRadius(8)
//                        .padding([.top, .bottom], 16)
                    
                    
                    HStack{
                        Text("Words")
                        //                    Image("backCover")
                        Button(action: {
                            print("Floating Button Click")
                        }, label: {
                            NavigationLink(destination: ShufflePrompts()) {
                                //                        Text("Open View")
                            }
                        })
                    }// End of HStack
                    
                    Button(action: { presentSheet = true && lnManager.isGranted}) {
                        AboutMeButtonView()
                    }
                    .sheet(isPresented: $presentSheet) {
                        CollectionExplanationView()
                            .presentationDetents([.large])
                            .presentationDragIndicator(.visible)
                    }
                    
                    //                    Image("journalHand")

                    Button("+")
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

extension View {
  func customButton() -> some View {
    modifier(testCustomViewModifer())
  }
}

struct NotificationButtonTest_Previews: PreviewProvider {
    static var previews: some View {
        NotificationButtonTest()
            .environmentObject(LocalNotificationManager())
    }
}
