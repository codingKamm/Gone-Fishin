//
//  AddJournalEntryButton.swift
//  Gone Fishin'
//
//  Created by Cameron Warner on 6/6/23.
//

import SwiftUI

struct AddJournalEntryButton: View {
    var body: some View {
        NavigationLink(destination: CreateEntry()) {
            Image(systemName: "plus.rectangle")
                .font(.title)
                .foregroundColor(.white)
                .accessibilityLabel("Create New Entry")

        }

    }
}

struct AddJournalEntryButton_Previews: PreviewProvider {
    static var previews: some View {
        AddJournalEntryButton()
    }
}
