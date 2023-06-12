//
//  TestTableOfContentsView.swift
//  C3 renamed Gone Fishin' 
//
//  Created by Cameron Warner on 3/6/23.
//

import SwiftUI

struct TableOfContentsView: View {
    @EnvironmentObject var localNotificationManager: LocalNotificationManager

    @State private var path = NavigationPath()

    var body: some View {
        
        NavigationStack {  //(path: $path){
            ZStack{
//                TestListView()
               Text("")
//                .navigationBarTitle("Table of Contents")
                .navigationBarTitleDisplayMode(.automatic)
                .toolbar {
                    ToolbarItem(placement: .principal){
                        Text("Table of Contents")
                            .font(.system(size: 36, design: .serif))
                            .foregroundColor(.white)
                            .padding(.top, 70)
                    }
                    ToolbarItem(placement: .navigationBarTrailing) {
                        HStack{
                            JournalIcon()
                            AboutView()
                            }// End of HStack
                        }
                    }// End of toolbar
                TableOfContentsBackgroundView()
            }// End of ZStack
        }//End of Nav. Stack
        
    }
}

struct TestTableOfContentsView_Previews: PreviewProvider {
    static var previews: some View {
        TableOfContentsView()
            .environmentObject(LocalNotificationManager())
            .environmentObject(EntryController())
            .environmentObject(User(name: "Friend"))
    }
}


//Nav. Bar Title Courtesy of https://www.hackingwithswift.com/books/ios-swiftui/adding-a-navigation-bar
