//
//  TrophiesView.swift
//  C3 renamed Gone Fishin' 
//
//  Created by Cameron Warner on 12/10/22.
//

import SwiftUI

struct TrophiesView: View {
//    var string = "TROPHIES"
//    @State private var stringArray = [String]()
    
    var body: some View {
        ZStack{
            TrophiesBackgroundView()
            VStack{
                HStack{
                    TrophiesVTextTitleView()
                        .padding(.trailing) 
                        .padding(30)
                    HStack{
                        Text("""
                 prized catches dripping wet
                 a mount to nothing
                 except golden silhouettes
                 an amount of nothing
                 accept the cost of regrets
                 some amount to something
                 an interest left to recollect
                 """)
                        .multilineTextAlignment(.leading)
                        .font(Font.custom("Bangla-Sangam-MN-Bold", size: 20))
                        .fontWeight(.semibold)
                        .padding()
                    }
                    .padding(.bottom, 200)
                } //End of HStack
                .foregroundColor(.white)
                .padding(.bottom, 40)
            }//End of VStack
        }//End of ZStack
        
    }
}


struct TrophiesView_Previews: PreviewProvider {
    static var previews: some View {
        TrophiesView()
    }
}

// Letters stacked vertically Retrieved from https://www.hackingwithswift.com/forums/swiftui/vertical-text/16935
