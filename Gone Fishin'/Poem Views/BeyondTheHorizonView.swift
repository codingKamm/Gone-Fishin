//
//  BeyondTheHorizonView.swift
//  Gone Fishin'
//
//  Created by Cameron Warner on 6/1/23.
//

import SwiftUI

struct BeyondTheHorizonView: View {
    var body: some View {
        ZStack{
            BeyondTheHorizonBackgroundView()
            VStack{
                HStack{
                    BeyondTheHorizonVTextTitleView()
                        .padding(.trailing, 0)
                    HStack{
                        Text("""
                 grandeur of serenity
                 that’s accepting of each doubt
                 courage is changing the inevitable
                 wisdom is weathering the drought
                 """)
                        .multilineTextAlignment(.leading)
                        .font(Font.custom("Bangla-Sangam-MN-Bold", size: 19))
                        .fontWeight(.semibold)
                        .padding()
                    }
                    .padding(.bottom, 570) 
                } //End of HStack
                .foregroundColor(.black)
            }//End of VStack
            ScrollBlinkingArrowRightView()
                 .padding(.top, 700)
                 .padding(.leading, 270)
                 .foregroundColor(.white)
        }// End of ZStack
        
    }
}

struct BeyondTheHorizonView_Previews: PreviewProvider {
    static var previews: some View {
        BeyondTheHorizonView()
    }
}
