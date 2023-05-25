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
            NavigationView {
                VStack(alignment: .leading) {
                    
                    // Greeting
                    HStack() {
                        Text("Good morning, \(entryUser.name)!")
                        .font(.system(size: 24).weight(.semibold))
                        .padding()
                    }
                    
                    // Promt
                    VStack() {
                        Text("How about creating a new post today?")
                        .font(.system(size: 18))
                        .background(myCustomColor.palePink)
                        .padding(10)
                            
                        NavigationLink(destination: CreateEntry()) {
                           Text("Create new Entry")
                        }.buttonStyle(MainButton())
                    }
                    .padding(24)
                    .frame(width: 360)
                    .background(myCustomColor.palePink)
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
                        .listRowBackground(myCustomColor.palePink)
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

struct MyCustomColors {
    var palePink: Color {
        return Color(red: 255 / 255, green: 243 / 255, blue: 243 / 255)
    }
    var oldPink: Color {
        return Color(red: 254 / 255, green: 215 / 255, blue: 215 / 255)
    }
    
    var slate: Color {
        return Color(red: 80 / 255, green: 80 / 255, blue: 80 / 255)
    }
}

struct MainButton: ButtonStyle {
    let myCC = MyCustomColors();
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding()
            .background(myCC.oldPink)
            .foregroundColor(myCC.slate)
            .cornerRadius(12)
    }
}

struct ContentTooView_Previews: PreviewProvider {
    static var previews: some View {
        ContentTooView()
            .environmentObject(EntryController())
            .environmentObject(User(name: "Visitor"))
    }
}
