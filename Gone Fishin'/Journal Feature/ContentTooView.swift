//
//  ContentTooView.swift
//  Gone Fishin'
//
//  Created by Cameron Warner on 5/25/23.
//

import SwiftUI

struct ContentTooView: View {
    
    @EnvironmentObject var entryUser: User
    @EnvironmentObject var entryController: EntryController
    var myCustomColor = MyCustomColors()
    
    var body: some View {
        VStack{
            NavigationStack {
                VStack(alignment: .leading) {
                    
                    // Greeting
                    HStack() {
                        Text("Hi, \(entryUser.name)!")
                        .font(.system(size: 24).weight(.semibold))
                        .padding()
                    }
                    
                    // Promt
                    VStack() {
                        Text("How about creating a new post today?")
                            .font(.system(size: 18))
                            .padding(10)
                        Section{
                            HStack{
                                NavigationLink(destination: CreateEntry()) {
                                    Text("Create new Entry")
                                }.buttonStyle(MainButton())
                                NavigationLink(destination: ShufflePrompts()) {
                                    VStack{
                                        Image(systemName: "shuffle")
                                        Text("Random Prompts")
                                    }
                                }.buttonStyle(MainButton())
                            }// End of HStack
                        }// End of Section
                    }
                    .padding(24)
                    .frame(width: 360)
                    .background(myCustomColor.greyKris)
                    .cornerRadius(16)
                    Spacer(minLength: 32)
                    
                    // Entries
                    List{
                        ForEach(entryController.entries.reversed()) { section in
                            NavigationLink( destination: EntryDetail(entry: section)){
                                EntryRow(item: section)
                            }
                        }
                        .onDelete(perform: deleteItems)
                        .padding([.top, .bottom], 5)
                        .listRowBackground(myCustomColor.greyKris)
                    }
                    .background(Color.white)
                    .navigationTitle("Journal")
                    .listStyle(GroupedListStyle())
                    .toolbar {
                        EditButton()
                    }
                }
            }
            .background(Color.white)
        }
        .padding()
        .background(Color.white)
    }
    
    func deleteItems(at offsets: IndexSet) {
        entryController.entries.remove(atOffsets: offsets)
    }
}

struct MainButton: ButtonStyle {
    let myCC = MyCustomColors();
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding()
            .background(myCC.blackKris)
            .foregroundColor(myCC.whiteFontKris)
            .cornerRadius(12)
    }
}


struct ContentTooView_Previews: PreviewProvider {
    static var previews: some View {
        ContentTooView()
            .environmentObject(EntryController())
            .environmentObject(User(name: "Friend"))
    }
}


// Journal feature Courtesy of https://github.com/kathhe/JournalApp
