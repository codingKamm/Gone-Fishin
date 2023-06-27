//
//  JournalMainView.swift
//  Gone Fishin'
//
//  Created by Cameron Warner on 5/25/23.
//

import SwiftUI

struct JournalMainView: View {
    
    //Notifications feature
    @EnvironmentObject var lnManager: LocalNotificationManager
    @Environment(\.scenePhase) var scenePhase
    @State private var scheduleDate = Date()
    
    //Journal Features
    @EnvironmentObject var entryUser: User
    @EnvironmentObject var entryController: EntryController
    var myCustomColor = MyCustomColors()
    
    var body: some View {
        NavigationStack {
        VStack{
            ZStack {
                
                Image("starBackground")
                    .resizable()
                    .edgesIgnoringSafeArea(.all)
                Text("Journal") //XL Bold
                    .foregroundColor(.white)
                    .font(.system(size: 40, design: .serif))
                    .bold()
                }//End of ZStack
                                .frame(height: 80)
            
                    // Greeting
                    HStack() {
                        Text(LocalizedStringKey("Hi, Friend!"))
                            .font(.system(size: 30,weight: .semibold, design: .serif))
                            .foregroundColor(.black)
                            .padding()
                        Spacer()
                       Image("journalHand")
                            .resizable()
                            .scaledToFit()
                    }// End of HStack
                    
                    // Promt
                    VStack() {
                        Section{
                            VStack{
                                Text("How about creating a new post today?")
                                    .font(.system(size: 18))
                                    .foregroundColor(.black)
                                    .padding(10)
                                HStack{
                                    Spacer()
                                    NavigationLink(destination: CreateEntry()) {
                                        Text("Create New Entry")
                                            .frame(width: 135, height: 25)
                                    }
                                    .buttonStyle(MainButton())
                                    .padding(.leading)
                                    
                                    NavigationLink(destination: ShufflePrompts()) {
                                        VStack{
                                            Image(systemName: "shuffle")
                                            Text("Random Prompts")
                                        }
                                        .frame(width: 135, height: 25)
                                        
                                    }
                                    .buttonStyle(MainButton())
                                    .padding(.trailing)
                                    Spacer()

                                }// End of HStack
                            }// End of VStack
                        }// End of Section
                        .buttonStyle(.bordered)
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
                            .cornerRadius(16)
                        }// End of List

                        .listStyle(GroupedListStyle())
                        .preferredColorScheme(.dark)
                        .cornerRadius(16)
                        .padding()
                        .toolbar {
                                AddJournalEntryButton()
                            }

                    }// End of Prompt && List VStack
            }// End of VStack
            .background(Color.white)
        }// End of Nav Stack
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
        JournalMainView()
            .environmentObject(EntryController())
            .environmentObject(User(name: "Friend"))
            .environmentObject(LocalNotificationManager())

    }
}


// Journal feature Courtesy of https://github.com/kathhe/JournalApp
