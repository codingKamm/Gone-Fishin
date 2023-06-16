//
//  FirstCatchView.swift
//  C3 renamed Gone Fishin' 
//
//  Created by Cameron Warner on 12/10/22.
//

import SwiftUI


struct FirstCatchView: View {
  
//var string = "FIRST CATCH"
//@State private var stringArray = [String]()
    
    var body: some View {
        ZStack{
            FirstCatchBackgroundView()
            VStack{
                HStack{
                     FirstCatchVTextTitleView()
//                        .padding(.leading)
                    Text("""
                 the excitement of completion
                 a thrill undefeated; conceited
                 surrounded by an isolated hue
                 encouraged by the calming view
                 \n
                 
                 an emotional freight trained off track
                 a master in the making; a progress to track
                 from humble beginnings; a process to trust
                 the first to tarnish from an everlasting rust
                 """)
                    .multilineTextAlignment(.leading)
                    .font(Font.custom("Bangla-Sangam-MN-Bold", size: 17))
                    .padding(2)
                } //End of HStack
                .padding(.bottom, 230)
//                HStack{
//                    
//                    TextFieldBottomSheetView()
//                }//End of HStack
            }//End of VStack
            .navigationTitle("First Catch")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    ChapterView()
                }
            }// End of Toolbar
        }// End of ZStack
    }
}

struct FirstCatchView_Previews: PreviewProvider {
    static var previews: some View {
        FirstCatchView()
    }
}

// Letters stacked vertically Retrieved from https://www.hackingwithswift.com/forums/swiftui/vertical-text/16935
