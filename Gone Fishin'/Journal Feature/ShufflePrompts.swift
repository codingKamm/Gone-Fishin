//
//  ShufflePrompts.swift
//  Gone Fishin'
//
//  Created by Cameron Warner on 5/26/23.
//

import SwiftUI

struct ShufflePrompts: View {

    @EnvironmentObject var entryController: EntryController
    @Environment(\.presentationMode) var presentationMode
    
    @State var createJournalPrompt: String = ""
    @State var createJournalShuffleTitle: String = ""
    @State var createJournalShuffleBody: String = ""
    
    @State var currentPrompt = WritingPromptsToShuffle.newPrompt
   
    //Localized Shuffle Prompt
    @State var localPrompt = NSLocalizedString(WritingPromptsToShuffle.allCases.randomElement()!.rawValue,
        comment: "")
    
    //Disable Editing
    @State private var disableTextField = true
    
    //Dismiss Keyboard
    @FocusState private var focusedField: Field?
    private enum Field: Int, CaseIterable {
        case doneDisimssOnKeyBoard
    }

    
    var body: some View {
        NavigationStack{
            ZStack{
                StarBackground()
                VStack {
                    Text("Today's Prompt:")
                        .multilineTextAlignment(.center)
                        .foregroundColor(.white)
                    
                    Form {
                        Section{
                            TextField("", text: $localPrompt, axis: .vertical)
                                .foregroundColor(.white)
                                .multilineTextAlignment(.center)
                                .disabled(disableTextField)
                                
                            
                        }// End of Section
                        Section {
                            TextField("Title", text: $createJournalShuffleTitle)
                                .pickerStyle(SegmentedPickerStyle())
                                .foregroundColor(.white)
                                .focused($focusedField, equals: .doneDisimssOnKeyBoard)
                                .toolbar {
                                    ToolbarItem(placement: .keyboard) {
                                        Button("") {
                                            focusedField = nil
                                        }
                                    }
                                }
                            TextEditor(text: $createJournalShuffleBody)
                                .lineSpacing(7)
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

                        }// End of Section
                        .scrollDismissesKeyboard(.interactively)
                        
                        Section {
                            Button(
                                action: {
                                    self.entryController.createEntry(
                                        prompt: self.createJournalPrompt,
                                        title: self.createJournalShuffleTitle,
                                        date: Date(),
                                        desc: self.createJournalShuffleBody)
                                    self.presentationMode.wrappedValue.dismiss()
                                },
                                label: {
                                    NavigationLink(destination: JournalMainView()) {
                                        ButtonView()
                                    }
                                }
                            )//End of Button
                        }// End of Section
                        
                    }// End of Form
                    
                    
                }// End of VStack
                //        .navigationTitle("Today's Prompt:")
                .navigationBarTitleDisplayMode(.inline)
                .padding()
                .listRowBackground(Color.black)
                .colorScheme(.dark)
                .foregroundColor(.white)
            }//ZStack
        }//End of Nav Stack
        
        
        }
    }



struct ShufflePrompts_Previews: PreviewProvider {
    static var previews: some View {
        ShufflePrompts()
    }
}



//Localized Shuffle Prompt https://www.appsloveworld.com/swift/100/122/swift-how-to-add-localization-on-enum-values

//Disable Editing https://www.swiftdevjournal.com/disable-a-text-field-in-a-swiftui-list-until-tapping-edit-button/

//Dismiss Keyboard https://useyourloaf.com/blog/swiftui-dismissing-the-keyboard/
