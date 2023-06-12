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
    
    
    var body: some View {
        ZStack{
            StarBackground()
        VStack {
            Text("Today's Prompt:")
                .multilineTextAlignment(.center)
            
            Form {
                Section{
                    TextField("", text: $localPrompt, axis: .vertical)
                        .multilineTextAlignment(.center)
                }// End of Section
                Section {
                    TextField("Title", text: $createJournalShuffleTitle)
                        .pickerStyle(SegmentedPickerStyle())
                    
                    TextEditor(text: $createJournalShuffleBody)
                        .lineSpacing(7)
                }// End of Section
                
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
            }//ZStack
        }
    }



struct ShufflePrompts_Previews: PreviewProvider {
    static var previews: some View {
        ShufflePrompts()
    }
}


//Localized Shuffle Prompt https://www.appsloveworld.com/swift/100/122/swift-how-to-add-localization-on-enum-values
