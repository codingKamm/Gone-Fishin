//
//  HookedView.swift
//  Gone Fishin'
//
//  Created by Cameron Warner on 6/1/23.
//

import SwiftUI

struct HookedView: View {
    var body: some View {
        ZStack{
            HookedBackgroundView()
            VStack{
                HStack{
                    HookedVTextTitleView()
                        .padding(.trailing)
                    Text("""
                 insightfully better
                 im stuck in a gaze
                 I can’t get enough
                 im stuck in my way
                 
                 mature enough to do better
                 but I still took the bait
                 pierced from each ambition
                 im still stuck and in my way
                 """)
                    .multilineTextAlignment(.leading)
                    .font(Font.custom("Bangla-Sangam-MN-Bold", size: 16))
                    .fontWeight(.semibold)
                    .padding(.trailing, 90)
                } //End of HStack
                .foregroundColor(.black)
                .padding(.bottom, 300)
            }//End of VStack
            ScrollBlinkingArrowRightView()
                 .padding(.top, 700)
                 .padding(.leading, 300)
                 .foregroundColor(.white)
        }// End of ZStack
    }
}

struct HookedView_Previews: PreviewProvider {
    static var previews: some View {
        HookedView()
    }
}
