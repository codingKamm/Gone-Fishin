//
//  HowToFishView.swift
//  C3 renamed Gone Fishin' 
//
//  Created by Cameron Warner on 12/9/22.
//

import SwiftUI

struct HowToFishView: View {
    
    var body: some View {
        ZStack{
            HowToFishBackgroundView()
                
            VStack{
                HStack{
                    HowToFishVTextTitleView()
                        .padding(.leading)
                    Text("""
                         imagine an imposter among us
                         hooked on each line; it’s justice
                         it’s just us; a reality cast from each reel
                         syndromes ripple in form of what’s real
                         """)
                    .font(Font.custom("Bangla-Sangam-MN-Bold", size: 16))
                    .multilineTextAlignment(.leading)
                    .padding()
                }//End of HStack
                .foregroundColor(.white)
                HStack{
                    TextFieldBottomSheetView()
                }//End of HStack
//                .foregroundColor(.white)
            }//End of VStack
            .navigationTitle("How To Fish")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    ChapterView()
                }
            }// End of Toolbar
        }// End of ZStack
    }
}


struct HowToFishView_Previews: PreviewProvider {
    static var previews: some View {
        HowToFishView()
    }
}

//Image Retrieved from
//https://pixabay.com

// Vertical Title Text courtesy of https://www.hackingwithswift.com/forums/swiftui/vertical-text/16935
