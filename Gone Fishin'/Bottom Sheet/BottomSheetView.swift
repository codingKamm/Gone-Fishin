//
//  BottomSheetView.swift
//  C3
//
//  Created by Cameron Warner on 1/11/23.
//

import SwiftUI

struct BottomSheetView: View { // Creat a view for each Bottom Sheet
    @State var presentSheet = false
    @State private var path = NavigationPath()
    var body: some View {
       
//
//        Button {
//            path.removeAll()
//        } label: {
//            Label("", systemImage: "text.book.closed")
//        }
        
        Button(action: { presentSheet = true }) {
         BottomSheetIconView()
        }
                .sheet(isPresented: $presentSheet) {
//                    path.removeAll()
                   BackCoverView()
                        .presentationDetents([.large])
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
