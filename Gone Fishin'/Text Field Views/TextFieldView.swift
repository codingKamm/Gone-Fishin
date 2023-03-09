//
//  TextFieldView.swift
//  C3
//
//  Created by Cameron Warner on 3/6/23.
//

import SwiftUI

struct TextFieldView: View {
    @State var poemNotes = ""
    var body: some View {
        VStack(alignment: .leading) {
                    TextField("Have a thought? Reflect && write it here...", text: $poemNotes)
                    Text("\(poemNotes)")
        }//End of VStack
        .padding()
    }
}

struct TextFieldView_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldView()
    }
}
