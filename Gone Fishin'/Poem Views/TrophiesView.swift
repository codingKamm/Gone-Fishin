//
//  TrophiesView.swift
//  C3 renamed Gone Fishin' 
//
//  Created by Cameron Warner on 12/10/22.
//

import SwiftUI

struct TrophiesView: View {
    var string = "TROPHIES"
    @State private var stringArray = [String]()
    
    var body: some View {
        VStack{
            HStack{
              testTrophiesView()
                    .padding(.leading)
                Text("""
                 prized catches dripping wet
                 a mount to nothing
                 except golden silhouettes
                 an amount of nothing
                 accept the cost of regrets
                 some amount to something
                 an interest left to recollect
                 """)
                .padding()
                .multilineTextAlignment(.center)
            } //End of HStack
            HStack{
                TextFieldBottomSheetView()
            }//End of HStack
        }//End of VStack
        .navigationTitle("Trophies")
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            ToolbarItem(placement: .navigationBarTrailing) {
               ChapterView()
                }
            }// End of Toolbar
    }
}


struct TrophiesView_Previews: PreviewProvider {
    static var previews: some View {
        TrophiesView()
    }
}

// Letters stacked vertically Retrieved from https://www.hackingwithswift.com/forums/swiftui/vertical-text/16935
