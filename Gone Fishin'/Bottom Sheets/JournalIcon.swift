//
//  JournalIcon.swift
//  Gone Fishin'
//
//  Created by Cameron Warner on 5/27/23.
//

import SwiftUI

struct JournalIcon: View {
    @State var presentSheet = false
    
            var body: some View {
                NavigationStack{
//                    NavigationLink(destination: JournalMainView()) {
                        Button(action: { presentSheet = true}) {
                            JournalIconButton()
                        }
                        .sheet(isPresented: $presentSheet) {
JournalMainView()                                .presentationDetents([.large])
                                .presentationDragIndicator(.visible)
                }
//                    }
                }// End of Nav. Stack
                
//                Button( action: { presentSheet = true }) {
//                                    JournalIconButton()
//                                    }
//                , label: {
//                    NavigationLink(destination: JournalMainView()) {
//                         Text("Open View")
//                     }
//                {
//        Image(systemName:"note.text.badge.plus")
//        }
//
                
                
                
//                Button( action: { presentSheet = true }) {
//                JournalIconButton()
//                }
//                        .sheet(isPresented: $presentSheet) {
//                        JournalMainView()
//                                .presentationDetents([.large])
//                                .presentationDragIndicator(.visible)
//                }
                       
            }
        }

struct JournalIcon_Previews: PreviewProvider {
    static var previews: some View {
        JournalIcon()
            .environmentObject(EntryController())
            .environmentObject(User(name: "Friend"))

    }
}
