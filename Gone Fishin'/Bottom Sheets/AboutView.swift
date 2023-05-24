//
//  AboutView.swift
//  Gone Fishin'
//
//  Created by Cameron Warner on 5/4/23.
//

import SwiftUI

struct AboutView: View {
    @EnvironmentObject var localNotificationManager: LocalNotificationManager
    @State var presentSheet = false
    
            var body: some View {
        
                Button(action: { presentSheet = true }) {
                AboutMeButtonView()
                }
                        .sheet(isPresented: $presentSheet) {
                          CollectionExplanationView()
                                .presentationDetents([.large])
                                .presentationDragIndicator(.visible)
                }
                       
            }
        }

struct AboutView_Previews: PreviewProvider {
    static var previews: some View {
        AboutView()
    }
}


//Bottom Sheet courtesy of https://sarunw.com/posts/swiftui-bottom-sheet/

// Image as Button courtesy of https://codewithchris.com/swiftui/swiftui-button/
