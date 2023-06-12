//
//  CreateEntry.swift
//  Gone Fishin'
//
//  Created by Cameron Warner on 5/25/23.
//

import SwiftUI

struct CreateEntry: View {
    
    // Local Notification feature
    @EnvironmentObject var lnManager: LocalNotificationManager
    @Environment(\.scenePhase) var scenePhase
    @State private var scheduleDate = Date()
    
    //Journal feature
    @EnvironmentObject var entryController: EntryController
    @Environment(\.presentationMode) var presentationMode
    
    @State var createPoemPrompt: String = ""
    @State var createPoemTitle: String = ""
    @State var createPoemStanza: String = ""
    
    var body: some View {
        ZStack{
            StarBackground()
            
            VStack {
                Text("Journal")
                    .multilineTextAlignment(.center)
                Form {
                    Section {
                        TextField("Title", text: $createPoemTitle)
                            .pickerStyle(SegmentedPickerStyle())
                        
                        TextEditor(text: $createPoemStanza)
                        //                        .foregroundColor(.black)
                            .lineSpacing(7)
                    }// End of Section
                    
                    Section {
                        //lnManager
                        //                    if lnManager.isGranted {
                        Button(
                            action: {
                                self.entryController.createEntry(prompt: self.createPoemPrompt, title: self.createPoemTitle, date: Date(), desc: self.createPoemStanza)
                                self.presentationMode.wrappedValue.dismiss()
                            },
                            label: {
                                NavigationLink(destination: JournalMainView()) {
                                    ButtonView()
                                }
                            }
                        )//End of Button
                        //                    }
                    }// End of Section
                    
                }// End of Form
                
                
            }// End of VStack
//            .navigationTitle("Journal")
//            .navigationBarTitleDisplayMode(.inline)
            .padding()
            .listRowBackground(Color.black)
            .colorScheme(.dark)
        }// End of ZStack
    }
}

struct ButtonView: View {
    let myCC = MyCustomColors();
    
    var body: some View {
        Text("Submit")
            .frame(alignment: .center)
            .padding()
            .background(myCC.blackKris)
            .foregroundColor(myCC.whiteFontKris)
            .cornerRadius(12)
    }
        
}

struct CreateEntry_Previews: PreviewProvider {
    static var previews: some View {
        CreateEntry()
    }
}
