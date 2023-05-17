//
//  CatchNReleaseView.swift
//  C3 renamed Gone Fishin' 
//
//  Created by Cameron Warner on 12/10/22.
//

import SwiftUI

struct CatchNReleaseView: View {
    @State var index: Int = 0
    
    var body: some View {
        NavigationStack{
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
            .navigationTitle("Catch & Release")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        self.index = 3
                    }) { Image(systemName: "arrow.right")
                    }
                }
            }// End of Toolbar
        }// End of Nav. Stack
    }
}

struct CatchNReleaseView_Previews: PreviewProvider {
    static var previews: some View {
        CatchNReleaseView()
    }
}

// Letters stacked vertically Retrieved from https://www.hackingwithswift.com/forums/swiftui/vertical-text/16935
