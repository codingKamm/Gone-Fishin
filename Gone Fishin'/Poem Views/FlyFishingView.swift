//
//  FlyFishingView.swift
//  Gone Fishin'
//
//  Created by Cameron Warner on 6/1/23.
//

import SwiftUI

struct FlyFishingView: View {
    var body: some View {
        VStack{
            HStack{
                FlyFishingVTextTitleView()
                .padding(.leading)
            Text("""
                 im shallow in my stance
                 white waters raging at my feet
                 with each captivating experience
                 victory lies in defeat
                 """)
            .multilineTextAlignment(.center)
        } //End of HStack
        HStack{

            TextFieldBottomSheetView()
        }//End of HStack
    }//End of VStack
        .navigationTitle("Fly Fishing")
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            ToolbarItem(placement: .navigationBarTrailing) {
               ChapterView()
                }
            }// End of Toolbar
    }
}

struct FlyFishingView_Previews: PreviewProvider {
    static var previews: some View {
        FlyFishingView()
    }
}
