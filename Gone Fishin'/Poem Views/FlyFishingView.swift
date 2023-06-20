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
                        .padding(.trailing)
                    HStack{
                        Text("""
                 im shallow in my stance
                 white waters rage at my feet
                 with each captivating experience
                 victory lies in defeat
                 """)
                        .multilineTextAlignment(.leading)
                        .font(Font.custom("Bangla-Sangam-MN-Bold", size: 19))
                        .fontWeight(.semibold)
                        .padding()
                    }
                    .padding(.bottom, 80)
                } //End of HStack
                .foregroundColor(.black)
            }//End of VStack
        }// End of ZStack
        
    }
}

struct FlyFishingView_Previews: PreviewProvider {
    static var previews: some View {
        FlyFishingView()
    }
}
