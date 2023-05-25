//
//  CreateEntry.swift
//  Gone Fishin'
//
//  Created by Cameron Warner on 5/25/23.
//

import SwiftUI

struct CreateEntry: View {
    @EnvironmentObject var entryController: EntryController
    @Environment(\.presentationMode) var presentationMode
    
    @State var createPoemTitle: String = ""
    @State var createPoemStanza: String = ""
    
    var body: some View {
        VStack {
            Form {
                Section {
                    TextField("Title", text: $createPoemTitle)
                    
//                    Picker("Mood:", selection: $entryMood) {
//                        ForEach(entryMoods, id: \.self) {
//                            Text("\($0)")
//                        }
//                    }
                    .pickerStyle(SegmentedPickerStyle())
                    
                    TextEditor(text: $createPoemStanza)
                        .foregroundColor(.black)
                }
                
                Section {
                    Button(
                        action: {
                            self.entryController.createEntry(title: self.createPoemTitle, date: Date(), desc: self.createPoemStanza)
                            self.presentationMode.wrappedValue.dismiss()
                        },
                        label: {
                            NavigationLink(destination: ContentTooView()) {
                                ButtonView()
                            }
                        }
                    )
                }
            }
        }
    }
}

struct ButtonView: View {
    let myCC = MyCustomColors();
    
    var body: some View {
        Text("Save")
            .frame(width: 200, alignment: .center)
            .padding()
            .background(myCC.oldPink)
            .foregroundColor(myCC.slate)
            .cornerRadius(12)
    }
}

struct CreateEntry_Previews: PreviewProvider {
    static var previews: some View {
        CreateEntry()
    }
}
