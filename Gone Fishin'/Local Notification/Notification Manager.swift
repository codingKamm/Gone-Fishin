////
////  Notification Manager.swift
////  Gone Fishin'
////
////  Created by Cameron Warner on 5/20/23.
////
//
//import Foundation
//import SwiftUI
//import NotificationCenter
//
//
//struct UserDefaultsUtil {
//    struct Keys {
//        static let silentNotificationSetting = "silentNotificationSetting"
//    }
//}
//
//
//@MainActor
//class LocalNotificationManager: NSObject, ObservableObject {
//
//    let notificationCenter = UNUserNotificationCenter.current()
//
//    // To check if the notification access was granted by the user
//    @Published var isGranted = false
//    // Pending notifications to be displayed to the user
//    @Published var pendingRequests: [UNNotificationRequest] = []
//    // Next view to show the user once they tap on the notification. This is great for sheets.
//    @Published var nextViewAfterNotificationWasTapped = finalContentView()
//
//    @AppStorage(UserDefaultsUtil.Keys.silentNotificationSetting) var silentNotificationSetting: Bool = true
//
//    enum SnoozeTime: String {
//        case fiveMinutes, tenMinutes, fifteenMinutes, thirtyMinutes
//    }
//
//    // Let the delegate class know that this class is the delegate to handle the functions
//    override init() {
//        super.init()
//        notificationCenter.delegate = self
//    }
//
//    /// Request notification authorization
//    func requestAuthorization() async throws {
//        try await notificationCenter
//            .requestAuthorization(options: [.sound, .badge, .alert])
//        registerActions()
//        await getCurrentSettings()
//    }
//
//    /// Makes sure that the user has granted access to notifications
//    func getCurrentSettings() async {
//        let currentSettings = await notificationCenter.notificationSettings()
//        isGranted = (currentSettings.authorizationStatus == .authorized)
//    }
//
//    /// Opens the default device notifications settings so the user can change the access previously given to our app
//    func openSettings() {
//        if let url = URL(string: UIApplication.openSettingsURLString) {
//            if UIApplication.shared.canOpenURL(url) {
//                Task {
//                    await UIApplication.shared.open(url)
//                }
//            }
//        }
//    }
//
//    /// Call to schedule a local notification using async Task handler
//    func scheduleNotification(id: String = UUID().uuidString, title: String, body: String, timeInterval: Double = 5, repeatNotification: Bool = false, scheduleType: LocalNotification.ScheduleType, dateComponents: DateComponents = Calendar.current.dateComponents([.day, .minute, .second], from: Date.now)) {
//        Task {
//            switch scheduleType {
//            case .time:
//                var localNotification = LocalNotification(identifier: id,
//                                                          title: title,
//                                                          body: body,
//                                                          timeInterval: timeInterval,
//                                                          repeats: repeatNotification)
//                localNotification.categoryIdentifier = "snooze"
//                await schedule(localNotification: localNotification)
//            case .calendar:
//                var localNotification = LocalNotification(identifier: id,
//                                                          title: title,
//                                                          body: body,
//                                                          dateComponents: dateComponents,
//                                                          repeats: repeatNotification)
//                localNotification.categoryIdentifier = "snooze"
//                await schedule(localNotification: localNotification)
//            }
//        }
//    }
//
//    /// Schedule a local notification
//     func schedule(localNotification: LocalNotification) async {
//        let content = UNMutableNotificationContent()
//        content.title = localNotification.title
//        content.body = localNotification.body
//        if let subtitle = localNotification.subtitle {
//            content.subtitle = subtitle
//        }
//        if let bundleImageName = localNotification.bundleImageName {
//            if let url = Bundle.main.url(forResource: bundleImageName, withExtension: "") {
//                if let attachment = try? UNNotificationAttachment(identifier: bundleImageName, url: url) {
//                    content.attachments = [attachment]
//                }
//            }
//        }
//        if let userInfo = localNotification.userInfo {
//            content.userInfo = userInfo
//        }
//        if let categoryIdentifier = localNotification.categoryIdentifier {
//            content.categoryIdentifier = categoryIdentifier
//        }
//
////         If the user wants silent notifications
//        if(!silentNotificationSetting) {
//            content.sound = .default
//        }
//
//        if localNotification.scheduleType == .time {
//        guard let timeInterval = localNotification.timeInterval else { return }
//        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: timeInterval,
//                                                        repeats: localNotification.repeats)
//            let request = UNNotificationRequest(identifier: localNotification.identifier, content: content, trigger: trigger)
//            try? await notificationCenter.add(request)
//        } else {
//            guard let dateComponents = localNotification.dateComponents else { return }
//            let trigger = UNCalendarNotificationTrigger(dateMatching: dateComponents, repeats: localNotification.repeats)
//            let request = UNNotificationRequest(identifier: localNotification.identifier, content: content, trigger: trigger)
//            try? await notificationCenter.add(request)
//        }
//        await getPendingRequests()
//    }
//
//    /// Check how many pending local notifications requests we have
//    func getPendingRequests() async {
//        pendingRequests = await notificationCenter.pendingNotificationRequests()
//        print("Pending notifications: \(pendingRequests.count)")
//    }
//
//    /// Remove a specific local notification request given its id
//    func removeRequest(withIdentifier identifier: String) {
//        notificationCenter.removePendingNotificationRequests(withIdentifiers: [identifier])
//        if let index = pendingRequests.firstIndex(where: {$0.identifier == identifier}) {
//            pendingRequests.remove(at: index)
//            print("Pending notifications: \(pendingRequests.count)")
//        }
//    }
//
//    /// Removes all pending local notifications
//    func clearRequests(ignoreNotifications: [String] = []) {
//        // Handles
//        if ignoreNotifications.isEmpty {
//            notificationCenter.removeAllPendingNotificationRequests()
//            pendingRequests.removeAll()
//        } else {
//            for request in pendingRequests {
//                if(!(ignoreNotifications.contains(request.identifier))) {
//                    removeRequest(withIdentifier: request.identifier)
//                }
//            }
//        }
//
//
//        print("Pending: \(pendingRequests.count)")
//    }
//}
//
//extension LocalNotificationManager: UNUserNotificationCenterDelegate {
//
//    /// Used for notification actions, e.g. snooze on lockscreen or when the notification is shown foreground/background
//    /// List of actions to show to the user. The first 2 are the prioritized.
//    func registerActions() {
//        let snooze5Action = UNNotificationAction(identifier: SnoozeTime.fiveMinutes.rawValue, title: "snooze_5_minutes")
//        let snooze10Action = UNNotificationAction(identifier: SnoozeTime.tenMinutes.rawValue, title: "snooze_10_minutes")
//        let snooze15Action = UNNotificationAction(identifier: SnoozeTime.fifteenMinutes.rawValue, title: "snooze_15_minutes")
//        let snooze30Action = UNNotificationAction(identifier: SnoozeTime.thirtyMinutes.rawValue, title: "snooze_30_minutes")
//        let snoozeCategory = UNNotificationCategory(identifier: "snooze",
//                                                    actions: [snooze5Action, snooze10Action, snooze15Action, snooze30Action],
//                                                    intentIdentifiers: [])
//        notificationCenter.setNotificationCategories([snoozeCategory])
//    }
//
//    // Delegate function
//    func userNotificationCenter(_ center: UNUserNotificationCenter,
//                                willPresent notification: UNNotification) async -> UNNotificationPresentationOptions {
//        await getPendingRequests()
//
//        // If the user wants silent notifications
//        if(!silentNotificationSetting) {
//            return [.sound, .banner]
//        } else {
//            return [.banner]
//        }
//    }
//
//    /// Respond to user tapping to the opening of the notification
//    func userNotificationCenter(_ center: UNUserNotificationCenter, didReceive response: UNNotificationResponse) async {
//        if response.notification.request.content.userInfo["nextView"] is String {
//            nextViewAfterNotificationWasTapped = finalContentView()
//        }
//
//        // Respond to snooze action
//        var snoozeInterval: Double?
//
//        switch response.actionIdentifier {
//        case SnoozeTime.fiveMinutes.rawValue:
//            snoozeInterval = 300
//        case SnoozeTime.tenMinutes.rawValue:
//            snoozeInterval = 600
//        case SnoozeTime.fifteenMinutes.rawValue:
//            snoozeInterval = 900
//        case SnoozeTime.thirtyMinutes.rawValue:
//            snoozeInterval = 1800
//        default:
//            snoozeInterval = 600
//        }
//
//        if let snoozeInterval = snoozeInterval {
//            let content = response.notification.request.content
//            let newContent = content.mutableCopy() as! UNMutableNotificationContent
//
//            // If the user wants silent notifications
//            if(!silentNotificationSetting) {
//                newContent.sound = .default
//            }
//
//            let newTrigger = UNTimeIntervalNotificationTrigger(timeInterval: snoozeInterval, repeats: false)
//            let request = UNNotificationRequest(identifier: UUID().uuidString,
//                                                content: newContent,
//                                                trigger: newTrigger)
//            do {
//                try await notificationCenter.add(request)
//            } catch {
//                print(error.localizedDescription)
//            }
//
//            await getPendingRequests()
//        }
//    }
//
//}
