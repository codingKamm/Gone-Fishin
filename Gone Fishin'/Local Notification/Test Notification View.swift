//
//  Test Notification View.swift
//  Gone Fishin'
//
//  Created by Cameron Warner on 5/23/23.
//

import SwiftUI

struct Test_Notification_View: View {
    
//    @EnvironmentObject var localNotificationManager: LocalNotificationManager
    @EnvironmentObject var lnManager: LocalNotificationManager
    @Environment(\.scenePhase) var scenePhase
    @State private var scheduleDate = Date()
    
    var body: some View {
        NavigationStack {
            VStack {
                if lnManager.isGranted {
                    GroupBox("Schedule") {
                        Button("Interval Notification") {
                            Task {
                                var localNotification = LocalNotification(identifier: UUID().uuidString,
                                                                          title: "Gone Fishin'",
                                                                          body: "Embrace the power of words and let inspiration find its way into your heart. Here's a brief moment of wisedom to uplift your spirit and ignite your inner fire.",
                                                                          timeInterval: 5,
                                                                          repeats: false)
                                localNotification.subtitle = "Stay Inspired"
                                localNotification.bundleImageName = "Stewart.png"
                                localNotification.userInfo = ["nextView" : NextView.renew.rawValue]
                                localNotification.categoryIdentifier = "snooze"
                                await lnManager.schedule(localNotification: localNotification)
                            }
                        }
                        .buttonStyle(.bordered)
                        
                        GroupBox {
                            DatePicker("", selection: $scheduleDate)
                            Button("Calendar Notification") {
                                Task {
                                    let dateComponents = Calendar.current.dateComponents([.year, .month, .day, .hour, .minute], from: scheduleDate)
                                    let localNotification = LocalNotification(identifier: UUID().uuidString,
                                                                              title: "Calendar Notification",
                                                                              body: "Some Body",
                                                                              dateComponents: dateComponents,
                                                                              repeats: false)
                                    await lnManager.schedule(localNotification: localNotification)
                                }
                            }
                            .buttonStyle(.bordered)
                        }
                        Button("Promo Offer") {
                            Task {
                                let dateComponents = DateComponents(day: 1, hour: 10, minute: 0)
                                var localNotification = LocalNotification(identifier: UUID().uuidString,
                                                                          title: "Special Promotion",
                                                                          body: "Take advantage of the monthly promotion",
                                                                          dateComponents: dateComponents,
                                                                          repeats: true)
                                localNotification.bundleImageName = "Stewart.png"
                                localNotification.userInfo = ["nextView" : NextView.renew.rawValue]
                                await lnManager.schedule(localNotification: localNotification)
                            }
                        }
                        .buttonStyle(.bordered)
                    }
                    .frame(width: 300)
                    List {
                        ForEach(lnManager.pendingRequests, id: \.identifier) { request in
                            VStack(alignment: .leading) {
                                Text(request.content.title)
                                HStack {
                                    Text(request.identifier)
                                        .font(.caption)
                                        .foregroundColor(.secondary)
                                }
                            }
                            .swipeActions {
                                Button("Delete", role: .destructive) {
                                    lnManager.removeRequest(withIdentifier: request.identifier)
                                }
                            }
                        }
                    }
                } else {
                    Button("Enable Notifications") {
                        lnManager.openSettings()
                    }
                    .buttonStyle(.borderedProminent)
                }
            }
            .sheet(item: $lnManager.nextView, content: { nextView in
                nextView.view()
            })
            .navigationTitle("Local Notifications")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        lnManager.clearRequests()
                    } label: {
                        Image(systemName: "clear.fill")
                            .imageScale(.large)
                    }
                }
            }
        }
        //        .navigationViewStyle(.stack)
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

struct Test_Notification_View_Previews: PreviewProvider {
    static var previews: some View {
        Test_Notification_View()
            .environmentObject(LocalNotificationManager())
    }
}
