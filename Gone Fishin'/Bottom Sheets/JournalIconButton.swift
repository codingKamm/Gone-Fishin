//
//  JournalIconButton.swift
//  Gone Fishin'
//
//  Created by Cameron Warner on 5/27/23.
//

import SwiftUI

struct JournalIconButton: View {
    var body: some View {
        Image(systemName: "note.text.badge.plus")
            .font(.headline)
    }
}

struct JournalIconButton_Previews: PreviewProvider {
    static var previews: some View {
        JournalIconButton()
    }
}