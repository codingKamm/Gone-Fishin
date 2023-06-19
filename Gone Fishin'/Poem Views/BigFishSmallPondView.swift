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
                    VStack{
                        BigFishSmallPondVTextTitleView()
                            .padding(.trailing, 100)
                    }
                    Text("""
                 with remnants of toxicity
                 each day is a risk to take
                 in joy each thought is safe
                 enjoy, there’s a new mistake
                 """)
                    .multilineTextAlignment(.leading)
                    .font(Font.custom("Bangla-Sangam-MN-Bold", size: 18))
                    .fontWeight(.semibold)
                    .padding([.bottom, .trailing])
                    .padding(.bottom, 100)
                } //End of HStack
                .padding(.bottom, 30)

            }//End of VStack
            .foregroundColor(.white)
        }// End of ZStack
    }
}

struct Big_Fish_Small_Pond_View_Previews: PreviewProvider {
    static var previews: some View {
        BigFishSmallPondView()
    }
}
