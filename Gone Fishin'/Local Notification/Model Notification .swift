//
//  Model Notification .swift
//  Gone Fishin'
//
//  Created by Cameron Warner on 5/20/23.
//

import Foundation

struct LocalNotification {

    // Time
    internal init(identifier: String,
                  title: String,
                  body: String,
                  timeInterval: Double,
                  repeats: Bool) {
        self.identifier = identifier
        self.scheduleType = .time
        self.title = title
        self.body = body
        self.timeInterval = timeInterval
        self.dateComponents = nil
        self.repeats = repeats
    }

    // Calendar
    internal init(identifier: String,
                  title: String,
                  body: String,
                  dateComponents: DateComponents,
                  repeats: Bool) {
        self.identifier = identifier
        self.scheduleType = .calendar
        self.title = title
        self.body = body
        self.timeInterval = nil
        self.dateComponents = dateComponents
        self.repeats = repeats
    }

    enum ScheduleType {
        case time, calendar
    }

    var identifier: String
    var scheduleType: ScheduleType
    var title: String
    var body: String
    var subtitle: String?
    var bundleImageName: String?
    var userInfo: [AnyHashable : Any]?
    // Measured in seconds. Must be at least 60s if notification is repating or will throw error.
    var timeInterval: Double?
    var dateComponents: DateComponents?
    var repeats: Bool
    var categoryIdentifier: String?
}
