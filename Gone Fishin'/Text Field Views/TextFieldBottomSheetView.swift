//
//  TextFieldBottomSheetView.swift
//  C3
//
//  Created by Cameron Warner on 3/6/23.
//

import SwiftUI

struct TextFieldBottomSheetView: View {
    @State var presentSheet = false
    
    var body: some View {
       
        Button(action: { presentSheet = true }) {
         TextFieldIcon()
        }
                .sheet(isPresented: $presentSheet) {
                           TextFieldView()
                        .presentationDetents([.height(125), .medium, .large])
        }
    }
}

struct TextFieldBottomSheetView_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldBottomSheetView()
    }
}
