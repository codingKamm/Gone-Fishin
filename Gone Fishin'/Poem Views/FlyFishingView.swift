//
//  FlyFishingView.swift
//  Gone Fishin'
//
//  Created by Cameron Warner on 6/1/23.
//

import SwiftUI

struct FlyFishingView: View {
    var body: some View {
        ZStack{
            FlyFishingBackgroundView()
            VStack{
                HStack{
                    FlyFishingVTextTitleView()
                        .padding(.leading)
                    HStack{
                        Text("""
                 im shallow in my stance
                 white waters raging at my feet
                 with each captivating experience
                 victory lies in defeat
                 """)
                        .multilineTextAlignment(.leading)
                        .font(Font.custom("Bangla-Sangam-MN-Bold", size: 19))
                        .padding()
                    }
                    .padding(.bottom, 80)
                } //End of HStack
                .foregroundColor(.black)
                
//                HStack{
//
//                    TextFieldBottomSheetView()
//                }//End of HStack
            }//End of VStack
//            .navigationTitle("Fly Fishing")
//            .navigationBarTitleDisplayMode(.inline)
//            .toolbar {
//                ToolbarItem(placement: .navigationBarTrailing) {
//                    ChapterView()
//                }
//            }// End of Toolbar
        }
    }
}

struct FlyFishingView_Previews: PreviewProvider {
    static var previews: some View {
        FlyFishingView()
    }
}
