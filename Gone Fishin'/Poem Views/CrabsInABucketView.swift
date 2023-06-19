//
//  CrabsInABucketView.swift
//  Gone Fishin'
//
//  Created by Cameron Warner on 6/1/23.
//

import SwiftUI

struct CrabsInABucketView: View {
    var body: some View {
        ZStack{
            CrabsInABucketBackgroundView()
            VStack{
                HStack{
                    CrabsInABucketVTextTitleView()
                        .padding([.trailing, .bottom], 40)
//                    Text("")
//                        .padding()
                    HStack{
                        Text("""
                 how can I tell you?
                 what’s happened to me
                 could still happen to you
                 I can’t let you progress
                 I never wanted what’s best
                 when you try to get ahead
                 I’ll pull you back with the rest
                 """)
                        .multilineTextAlignment(.leading)
                        .font(Font.custom("Bangla-Sangam-MN-Bold", size: 20))
                        .fontWeight(.semibold)

                        Text("")
                            .padding(.bottom, 90)
                    }
                    .padding(.bottom, 190)
                } //End of HStack
                .foregroundColor(.white)
                .padding(.bottom, 25)
            }//End of VStack
        }// End of ZStack
    }
}

struct CrabsInABucketView_Previews: PreviewProvider {
    static var previews: some View {
        CrabsInABucketView()
    }
}
