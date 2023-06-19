//
//  FirstCatchView.swift
//  C3 renamed Gone Fishin' 
//
//  Created by Cameron Warner on 12/10/22.
//

import SwiftUI


struct FirstCatchView: View {
  
    
    var body: some View {
        ZStack{
            FirstCatchBackgroundView()
            VStack{
                HStack{
                    VStack{
                        FirstCatchVTextTitleView()
                            .padding(.leading)
                    }
                    Text("""
                 the excitement of completion
                 a thrill undefeated; conceited
                 surrounded by an isolated hue
                 encouraged by the calming view
                 \n
                 
                 an emotional freight trained off track
                 a master in the making; a progress to track
                 from humble beginnings; a process to trust
                 the first to tarnish from an everlasting rust
                 """)
                    .multilineTextAlignment(.leading)
                    .font(Font.custom("Bangla-Sangam-MN-Bold", size: 17))
                    .fontWeight(.semibold)
//                    .padding(.leading)
                    .padding(.bottom, 60)
                } //End of HStack
                .padding(.bottom, 190)
            }//End of VStack
            .foregroundColor(.black)
        }// End of ZStack
    }
}

struct FirstCatchView_Previews: PreviewProvider {
    static var previews: some View {
        FirstCatchView()
    }
}

