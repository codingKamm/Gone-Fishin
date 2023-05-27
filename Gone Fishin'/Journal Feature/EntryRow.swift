//
//  EntryRow.swift
//  Gone Fishin'
//
//  Created by Cameron Warner on 5/25/23.
//

import SwiftUI

struct EntryRow: View {
    let item: EntrySection
    var myCustomColor = MyCustomColors()
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                HStack{
                    VStack {
                        Text(item.getDateString(date: item.date))
                            .font(.system(size: 13))
                            .padding()
                            .background(myCustomColor.greyKris)
                            .cornerRadius(7)
                    }
                    .padding(10)
                    
                    VStack(alignment: .leading) {
                        Text(item.title)
                            .font(.headline)
                        Text(item.stanza)
                            .frame(height: 50)
                            .truncationMode(.tail)
                    }
                }
            }
        }
    }
}

struct EntryRow_Previews: PreviewProvider {
    static var previews: some View {
        EntryRow(item: EntrySection.example)
    }
}
