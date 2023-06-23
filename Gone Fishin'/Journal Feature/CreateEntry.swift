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
    
    //Dismiss Keyboard
    @FocusState private var focusedField: Field?
    private enum Field: Int, CaseIterable {
        case doneDisimssOnKeyBoard
    }
    
    //Edit Prompt
    @State private var isEditing: Bool = false

    var body: some View {
        ZStack{
            StarBackground()
            
            VStack {
                Text("Journal")
                    .multilineTextAlignment(.center)
                    .foregroundColor(.white)
                Form {
                    Section {
                            TextField("Title", text: $createPoemTitle)
                            .foregroundColor(.white)
                                .pickerStyle(SegmentedPickerStyle())
                                .focused($focusedField, equals: .doneDisimssOnKeyBoard)
                                .toolbar {
                                    ToolbarItem(placement: .keyboard) {
                                        Button("") {
                                            focusedField = nil
                                        }
                                    }
                                }
                            TextEditor(text: $createPoemStanza)
                                .foregroundColor(.white)
                                .focused($focusedField, equals: .doneDisimssOnKeyBoard)
                                .toolbar {
                                    ToolbarItem(placement: .keyboard) {
                                        Button("Done") {
                                            focusedField = nil
                                        }
                                    }
                                }
                                .foregroundColor(.white)
                                .lineSpacing(7)
                    }// End of Section
                    
                    Section {
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
