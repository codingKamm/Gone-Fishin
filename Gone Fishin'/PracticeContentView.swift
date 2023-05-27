//
//  PracticeContentView.swift
//  Gone Fishin'
//
//  Created by Cameron Warner on 5/27/23.
//

import SwiftUI

struct PracticeContentView: View {
    
    @EnvironmentObject var entryUser: User
    @EnvironmentObject var entryController: EntryController
    var myCustomColor = MyCustomColors()
    
    var body: some View {
        NavigationStack{
            VStack{
                // Greeting
                HStack() {
                    Text("Hi, \(entryUser.name)!")
                    .font(.system(size: 24).weight(.semibold))
                    .padding()
                }
            }// End of VStack
        }// End of Nav. Stack
    }
}

struct PracticeContentView_Previews: PreviewProvider {
    static var previews: some View {
        PracticeContentView()
            .environmentObject(EntryController())
            .environmentObject(User(name: "Friend"))
    }
}
