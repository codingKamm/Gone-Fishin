//
//  BaitingView.swift
//  Gone Fishin'
//
//  Created by Cameron Warner on 6/1/23.
//

import SwiftUI

struct BaitingView: View {
    var body: some View {
        ZStack{
            BaitingBackgroundView()
            VStack{
                HStack{
                    BaitingVTextTitleView()
                    //                    .padding(.leading)
                    Text("""
                 allured by a lure
                 seemingly out of reach
                 it’s like promising change
                 using the same opportunity
                 """)
                    .multilineTextAlignment(.center)
                } //End of HStack
                .foregroundColor(.white)
                .padding(.bottom, 70)

                HStack{
                    TextFieldBottomSheetView()
                }//End of HStack
                
            }//End of VStack
            .navigationTitle("Baiting")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    ChapterView()
                }
            }// End of Toolbar
        }//End of ZStack
    }
}

struct BaitingView_Previews: PreviewProvider {
    static var previews: some View {
        BaitingView()
    }
}
