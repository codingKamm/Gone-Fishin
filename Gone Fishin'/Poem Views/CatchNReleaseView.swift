//
//  CatchNReleaseView.swift
//  C3 renamed Gone Fishin' 
//
//  Created by Cameron Warner on 12/10/22.
//

import SwiftUI

struct CatchNReleaseView: View {
    
    var body: some View {
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
                        .fontWeight(.semibold)

                        Text("")
                    }
                    .padding(.bottom, 200)
                }//End of HStack
                .foregroundColor(.white)
            }//End of VStack
        }//End of ZStack
    }
}

struct CatchNReleaseView_Previews: PreviewProvider {
    static var previews: some View {
        CatchNReleaseView()
    }
}

