//
//  TestTableOfContentsView.swift
//  C3 renamed Gone Fishin' 
//
//  Created by Cameron Warner on 3/6/23.
//

import SwiftUI

struct TestTableOfContentsView: View {
    @EnvironmentObject var localNotificationManager: LocalNotificationManager

    var body: some View {
        
        NavigationStack{
            VStack{
                List{
                    Text("How To Fish")
                    Text("Gone Fishin'")
                    Text("First Catch")
                    Text("Catch & Release")
                    Text("Trophies")
                }//End of List
                .listStyle(.sidebar)
                
            }//End of VStack
            
            .navigationBarTitle("Table of Contents")
            .navigationBarTitleDisplayMode(.automatic)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    HStack{
                        JournalIcon()
                        AboutView()
                    }// End dof HStack
                }
                    }// End of toolbar
            
        }//End of Nav. Stack
        
    }
}

struct TestTableOfContentsView_Previews: PreviewProvider {
    static var previews: some View {
        TestTableOfContentsView()
            .environmentObject(EntryController())
            .environmentObject(User(name: "Friend"))
    }
}


//Nav. Bar Title Courtesy of https://www.hackingwithswift.com/books/ios-swiftui/adding-a-navigation-bar
