//
//  ChapterView.swift
//  Gone Fishin'
//
//  Created by Cameron Warner on 3/23/23.
//

import SwiftUI

struct ChapterView: View {
    @State var chapterSheet = false
    var body: some View {
            
            Button(action: { chapterSheet = true }) {
               ChapterBottomSheetView()
            }// End of Button
            .fullScreenCover(isPresented: $chapterSheet, content: {
               PoemListView()                   .presentationDetents([.medium])
                    .presentationDragIndicator(.visible)
        })// End of Bottom Sheet
    }
}

struct ChapterView_Previews: PreviewProvider {
    static var previews: some View {
        ChapterView()
    }
}
