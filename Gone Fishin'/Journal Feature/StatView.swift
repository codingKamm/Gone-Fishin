//
//  StatView.swift
//  Gone Fishin'
//
//  Created by Cameron Warner on 5/25/23.
//

import SwiftUI
import UserNotifications

struct StatView: View {
    @EnvironmentObject var entryController: EntryController

    var body: some View {
        Text("There are \(entrycount()) entries.")
    }
    
    func entrycount() -> Int {
        return entryController.entries.count
    }
}

struct StatView_Previews: PreviewProvider {
    static var previews: some View {
//        StatView(entryController: EntryController())
        StatView()
    }
}
