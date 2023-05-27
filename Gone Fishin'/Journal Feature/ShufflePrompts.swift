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
    
    @State var createJournalShuffleTitle: String = ""
    @State var createJournalShuffleBody: String = ""
    
        var body: some View {
            let currentPrompt = WritingPromptsToShuffle.newPrompt
            
            VStack {
             
                Form {
                    Text("Today's Prompt: \n\(currentPrompt)")
                    .multilineTextAlignment(.center)
                    
                }
                Form {
                Section {
                        TextField("Title", text: $createJournalShuffleTitle)
                            .pickerStyle(SegmentedPickerStyle())
                        
                        TextEditor(text: $createJournalShuffleBody)
                            .foregroundColor(.black)
                            .lineSpacing(7)
                    }// End of Section
                    
                    Section {
                        Button(
                            action: {
                                self.entryController.createEntry(title: self.createJournalShuffleTitle, date: Date(), desc: self.createJournalShuffleBody)
                                self.presentationMode.wrappedValue.dismiss()
                            },
                            label: {
                                NavigationLink(destination: ContentTooView()) {
                                    ButtonView()
                                }
                            }
                        )//End of Button
                    }// End of Section
                    
                }// End of Form
                
                
            }// End of VStack
            .navigationTitle("Journal")
            .navigationBarTitleDisplayMode(.inline)
            .padding()
        }
    }



struct ShufflePrompts_Previews: PreviewProvider {
    static var previews: some View {
        ShufflePrompts()
    }
}



// Timer Courtesy of https://stackoverflow.com/questions/57199922/create-a-timer-publisher-using-swift-combine/57201744#57201744


