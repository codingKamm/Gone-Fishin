//
//  Entry.swift
//  Gone Fishin'
//
//  Created by Cameron Warner on 5/25/23.
//

import SwiftUI

struct EntrySection: Codable, Identifiable, Equatable {
    var id = UUID()
    var prompt: String
    var title: String
    let date: Date
    var stanza: String
    
    init(prompt: String, title: String, date: Date, stanza: String) {
        self.prompt = prompt
        self.title = title
        self.date = date
        self.stanza = stanza
    }
    
    func getDateString(date: Date) -> String {
        var dateString: String = "";
        let dateFormatter = DateFormatter()
        // Format date for output
        dateFormatter.dateFormat = "MMM d"
        dateString = dateFormatter.string(from: date)
        
        return dateString
    }
    
#if DEBUG
    static let example = EntrySection(prompt: "What's your favorite breakfast meal?", title: "Maple French Toast", date: Date(), stanza: "Sweet, fluffy, and served piping hot, our French toast is flown in fresh every day from Maple City, Canada, which is where all maple syrup in the world comes from. And if you believe that, we have some land to sell you…")
#endif
}
