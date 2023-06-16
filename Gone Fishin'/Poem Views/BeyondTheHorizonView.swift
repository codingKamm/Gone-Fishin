//
//  BeyondTheHorizonView.swift
//  Gone Fishin'
//
//  Created by Cameron Warner on 6/1/23.
//

import SwiftUI

struct BeyondTheHorizonView: View {
    var body: some View {
        NavigationStack{
        ZStack{
            BeyondTheHorizonBackgroundView()
            VStack{
                HStack{
                    BeyondTheHorizonVTextTitleView()
                        .padding(.leading)
                    HStack{
                        Text("""
                 grandeur of serenity
                 that’s accepting of each doubt
                 courage is changing the inevitable
                 wisdom is weathering the drought
                 """)
                        .multilineTextAlignment(.leading)
                        .font(Font.custom("Bangla-Sangam-MN-Bold", size: 19))
                        .padding()
                    }
                    .padding(.bottom, 600)
                } //End of HStack
                .foregroundColor(.black)
                //                HStack{
                //                    TextFieldBottomSheetView()
                //                }//End of HStack
                //                .foregroundColor(.white)
            }//End of VStack
//            .navigationTitle("Beyond the Horizon")
//            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    CapsuleIconsView()
                }
            }// End of Toolbar
        }// End of ZStack
        }//End of Nav. Stack
    }
}

struct BeyondTheHorizonView_Previews: PreviewProvider {
    static var previews: some View {
        BeyondTheHorizonView()
    }
}
