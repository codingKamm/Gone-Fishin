//
//  BottomSheetView.swift
//  C3
//
//  Created by Cameron Warner on 1/11/23.
//

import SwiftUI

struct BottomSheetView: View { // Creat a view for each Bottom Sheet
    @State var presentSheet = false
    
    var body: some View {
       
        Button(action: { presentSheet = true }) {
         BottomSheetIconView()
        }
                .sheet(isPresented: $presentSheet) {
                           PoemListView()
//                    TestTableOfContentsView()
                        .presentationDetents([.medium, .large])
        }
    }
}

struct BottomSheetView_Previews: PreviewProvider {
    static var previews: some View {
        BottomSheetView()
    }
}


//Bottom Sheet courtesy of https://sarunw.com/posts/swiftui-bottom-sheet/

// Image as Button courtesy of https://codewithchris.com/swiftui/swiftui-button/
