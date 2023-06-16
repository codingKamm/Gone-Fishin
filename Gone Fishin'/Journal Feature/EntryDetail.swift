//
//  EntryDetail.swift
//  Gone Fishin'
//
//  Created by Cameron Warner on 5/25/23.
//

import SwiftUI

struct EntryDetail: View {
    
    let entry: EntrySection
    
    var body: some View {
        
        VStack {
            Text(entry.prompt)
                .font(.callout)
            Text(entry.title)
                .font(.largeTitle)
            Text(entry.getDateString(date: entry.date))
                .font(.footnote)
            Text(entry.stanza)
                .padding()
                
            Spacer()
        }
        .padding(.top, 25)
        .navigationTitle(entry.title)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct EntryDetail_Previews: PreviewProvider {
    static var previews: some View {
        EntryDetail(entry: EntrySection.example)
    }
}
