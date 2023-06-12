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
                        .padding(.leading)
                    Text("""
                 grandeur of serenity
                 that’s accepting of each doubt
                 courage is changing the inevitable
                 wisdom is weathering the drought
                 """)
                    .multilineTextAlignment(.center)
                } //End of HStack
                .foregroundColor(.white)
                HStack{
                    TextFieldBottomSheetView()
                }//End of HStack
                .foregroundColor(.white)
            }//End of VStack
            .navigationTitle("Beyond the Horizon")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    ChapterView()
                }
            }// End of Toolbar
        }// End of ZStack
    }
}

struct BeyondTheHorizonView_Previews: PreviewProvider {
    static var previews: some View {
        BeyondTheHorizonView()
    }
}
