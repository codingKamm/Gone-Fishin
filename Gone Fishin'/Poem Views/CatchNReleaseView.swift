//
//  CatchNReleaseView.swift
//  C3 renamed Gone Fishin' 
//
//  Created by Cameron Warner on 12/10/22.
//

import SwiftUI

struct CatchNReleaseView: View {
    var string = "CATCH & RELEASE"
    @State private var stringArray = [String]()
    
    var body: some View {
//        NavigationStack{
        VStack{
            HStack{
               testCatchNReleaseView()
                .padding(.leading)
                Text("""
                         behind the scenes of curiosity
                         you’ll meet every opportunity
                         a constant fight; a timeless bout
                         counting losses, grudges, and doubt
                         \n just let it go..
                         """)
                .padding()
                .multilineTextAlignment(.center)
            }//End of HStack
            HStack{
                TextFieldBottomSheetView()
            }//End of HStack
        }//End of VStack
//        }//End of Nav. Stack
        .navigationTitle("Catch & Release")
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            ToolbarItem(placement: .navigationBarTrailing) {
               ChapterView()
                }
            }// End of Toolbar
    }
}

struct CatchNReleaseView_Previews: PreviewProvider {
    static var previews: some View {
        CatchNReleaseView()
    }
}

// Letters stacked vertically Retrieved from https://www.hackingwithswift.com/forums/swiftui/vertical-text/16935
