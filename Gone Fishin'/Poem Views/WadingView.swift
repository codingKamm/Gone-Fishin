//
//  WaitingView.swift
//  Gone Fishin'
//
//  Created by Cameron Warner on 6/1/23.
//

import SwiftUI

struct WadingView: View {
    
    var body: some View {
        ZStack{
            WadingBackgroundView()
            VStack{
                HStack{
                    WadingVTextTitleView()
                        .padding(.leading)
                    VStack{
            Text("""
                 I went from waiting
                 To wading
                 Just to wound up in the deep end
                 """)
                        .multilineTextAlignment(.leading)
                        .font(Font.custom("Bangla-Sangam-MN-Bold", size: 16))
                        .padding(.leading, 50)
                    }// End of VStack
                    .padding(.top, 100)
                } //End of HStack
                .padding(.bottom, 210)
//                HStack{
//                    
//                    TextFieldBottomSheetView()
//                }//End of HStack
            }//End of VStack
            .foregroundColor(.black)
//            .navigationTitle("Waiting")
//            .navigationBarTitleDisplayMode(.inline)
//            .toolbar {
//                ToolbarItem(placement: .navigationBarTrailing) {
//                    ChapterView()
//                }
//            }// End of Toolbar
        }// End of ZStack
    }
}

struct WaitingView_Previews: PreviewProvider {
    static var previews: some View {
        WadingView()
    }
}
