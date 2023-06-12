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
                            .foregroundColor(.black)
                            .padding()
                            .background(.white)
                            .cornerRadius(7)
                    }
                    .padding(10)
                    
                    VStack(alignment: .leading) {
//                        Section{Text(item.prompt)
//                                .font(.callout)
//                                .italic()
//                        }
//                        .padding(.trailing)
                        Text(item.title)
                            .font(.title2)
                            .foregroundColor(.black)
                            .bold()
                        Text(item.stanza)
                            .frame(height: 50)
                            .foregroundColor(.black)
                            .truncationMode(.tail)
                    }
                }// End of HStack
                .cornerRadius(7)
//                .colorScheme(.dark)

            }// End of VStack
            .cornerRadius(7)
        }// End of HStack
        .cornerRadius(7)
    }
}

struct EntryRow_Previews: PreviewProvider {
    static var previews: some View {
        EntryRow(item: EntrySection.example)
    }
}
