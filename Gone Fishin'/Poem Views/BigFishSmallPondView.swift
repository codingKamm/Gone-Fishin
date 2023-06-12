//
//  Big Fish Small Pond View.swift
//  Gone Fishin'
//
//  Created by Cameron Warner on 6/1/23.
//

import SwiftUI

struct BigFishSmallPondView: View {
    var body: some View {
        ZStack{
            BigFishSmallPondBackgroundView()
            VStack{
                HStack{
                    BigFishSmallPondVTextTitleView()
                    //                .padding(.leading)
                    Text("""
                 with remnants of toxicity
                 each day is a risk to take
                 in joy each thought is safe
                 enjoy, there’s a new mistake
                 """)
                    .multilineTextAlignment(.center)
                } //End of HStack
                .foregroundColor(.white)
                HStack{
                    
                    TextFieldBottomSheetView()
                }//End of HStack
//                .foregroundColor(.white)
            }//End of VStack
            .navigationTitle("Big Fish Small Pond")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    ChapterView()
                }
            }// End of Toolbar
        }// End of ZStack
    }
}

struct Big_Fish_Small_Pond_View_Previews: PreviewProvider {
    static var previews: some View {
        BigFishSmallPondView()
    }
}
