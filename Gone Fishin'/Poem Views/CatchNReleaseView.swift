//
//  CatchNReleaseView.swift
//  C3 renamed Gone Fishin' 
//
//  Created by Cameron Warner on 12/10/22.
//

import SwiftUI

struct CatchNReleaseView: View {
    
    var body: some View {
//        NavigationStack{
        ZStack{
            CatchNReleaseBackgroundView()
            VStack{
                HStack{
                    CatchNReleaseVTextTitleView()
                        .padding(.leading)
                    HStack{
                        Text("""
                         behind the scenes of curiosity
                         you’ll meet every opportunity
                         a constant fight; a timeless bout
                         counting losses, grudges, and doubt
                         \n just let it go..
                         """)
                        .padding()
                        .multilineTextAlignment(.leading)
                        .font(Font.custom("Bangla-Sangam-MN-Bold", size: 18))
                        Text("")
                    }
                    .padding(.bottom, 200)

                }//End of HStack
                .foregroundColor(.white)
//                HStack{
//                    TextFieldBottomSheetView()
//                }//End of HStack
//                .foregroundColor(.white)
            }//End of VStack
            .navigationTitle("Catch & Release")
            .navigationBarTitleDisplayMode(.inline)
            //            .toolbar {
            //                ToolbarItem(placement: .navigationBarTrailing) {
            //                    Button(action: {
            //                        self.index = 3
            //                    }) { Image(systemName: "arrow.right")
            //                    }
            //                }
            //            }// End of Toolbar
            //        }// End of Nav. Stack
        }//End of ZStack
    }
}

struct CatchNReleaseView_Previews: PreviewProvider {
    static var previews: some View {
        CatchNReleaseView()
    }
}

// Letters stacked vertically Retrieved from https://www.hackingwithswift.com/forums/swiftui/vertical-text/16935
