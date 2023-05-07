//
//  FirstCatchView.swift
//  C3 renamed Gone Fishin' 
//
//  Created by Cameron Warner on 12/10/22.
//

import SwiftUI


struct FirstCatchView: View {
  
var string = "FIRST CATCH"
@State private var stringArray = [String]()
    
    var body: some View {
//        NavigationStack{
        VStack{
        HStack{
           testFirstCatchView()
                .padding(.leading)
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
            .padding(10)
            .multilineTextAlignment(.center)
        } //End of HStack
        HStack{

            TextFieldBottomSheetView()
        }//End of HStack
    }//End of VStack
//        }//End of Nav. Stack
        .navigationTitle("First Catch")
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            ToolbarItem(placement: .navigationBarTrailing) {
               ChapterView()
                }
            }// End of Toolbar
    }
}

struct FirstCatchView_Previews: PreviewProvider {
    static var previews: some View {
        FirstCatchView()
    }
}

// Letters stacked vertically Retrieved from https://www.hackingwithswift.com/forums/swiftui/vertical-text/16935
