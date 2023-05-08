//
//  TextFieldView.swift
//  C3 renamed to Gone Fishin'
//
//  Created by Cameron Warner on 3/6/23.
//

import SwiftUI

struct TextFieldView: View {
    @State private var poemNotes = ""
    
    var body: some View {
        NavigationStack{
            VStack{
                VStack(alignment: .leading) {
                    TextField("Have a thought? Reflect && write it here...", text: $poemNotes, axis: .vertical)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                }//End of VStack
                .padding()
            }//End of VStack
            .navigationTitle("Poetic Thoughts")
            .navigationBarTitleDisplayMode(.inline)
            // Use the onDisappear modifier to save the state of the view when the user navigates away from it.
            .onDisappear {
                            UserDefaults.standard.set(poemNotes, forKey: "poemNotes")
                        }//End of onDisappear
        }//End of Nav. Stack
        .onAppear {
                    // Retrieve the saved reflection text when the view appears.
                    if let savedPoemNotes = UserDefaults.standard.string(forKey: "poemNotes") {
                        poemNotes = savedPoemNotes
                    }
                }//End of onAppear
    }
}

struct TextFieldView_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldView()
    }
}

// Text Field Courtesy of https://www.simpleswiftguide.com/swiftui-textfield-complete-tutorial/

// Expandable Text Field Courtesy of https://serialcoder.dev/presenting-expandable-textfields-in-swiftui/

// User Defaults courtesy of https://www.hackingwithswift.com/books/ios-swiftui/storing-user-settings-with-userdefaults


