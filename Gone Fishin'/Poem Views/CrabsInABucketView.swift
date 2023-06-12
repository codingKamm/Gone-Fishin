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
                        .padding(.leading)
                    Text("""
                 how can I tell you?
                 what’s happened to me
                 could still happen to you
                 I can’t let you progress
                 I never wanted what’s best
                 when you try to get ahead
                 I’ll pull you back with the rest
                 """)
                    .multilineTextAlignment(.center)
                } //End of HStack
                .foregroundColor(.white)
                HStack{
                    
                    TextFieldBottomSheetView()
                }//End of HStack
                .foregroundColor(.white)
            }//End of VStack
            .navigationTitle("Crabs in a Bucket")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    ChapterView()
                }
            }// End of Toolbar
        }// End of ZStack
    }
}

struct CrabsInABucketView_Previews: PreviewProvider {
    static var previews: some View {
        CrabsInABucketView()
    }
}
