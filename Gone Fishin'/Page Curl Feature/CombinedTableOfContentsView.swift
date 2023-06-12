//
//  CombinedTableOfContentsView.swift
//  Gone Fishin'
//
//  Created by Cameron Warner on 6/2/23.
//

import SwiftUI
import Pages

struct CombinedTableOfContentsView: View {
    @State var poemIndex: Int = 0
    @State var poemIndex1: Int = 0
    @State var poemIndex2: Int = 0

    var body: some View {
        
            
        Pages(currentPage: $poemIndex, navigationOrientation: .vertical, transitionStyle: .scroll, wrap: true)
        {
                        Vol1Poems()
                        Vol2Poems()
//            Pages(currentPage: $poemIndex1, navigationOrientation: .vertical, transitionStyle: .scroll, wrap: false){
//                //            Vol1Poems()
//                //            Vol2Poems()
//                HowToFishView()
//                BaitingView()
//                WadingView()
//                GoneFishin_View()
//                BigFishSmallPondView()
//                HookedView()
//                FirstCatchView()
//                CrabsInABucketView()
//                CatchNReleaseView()
//            .edgesIgnoringSafeArea(.all)
//
//
//            Pages(currentPage: $poemIndex, navigationOrientation: .vertical, transitionStyle: .scroll, wrap: false)
//                      {
//                FlyFishingView()
//                TrophiesView()
//                BeyondTheHorizonView()
//                }
//
//            .edgesIgnoringSafeArea(.all)
//
//            }
//            .edgesIgnoringSafeArea(.all)
        }// End of Main Pages
        .edgesIgnoringSafeArea(.all)

    }
}

struct CombinedTableOfContentsView_Previews: PreviewProvider {
    static var previews: some View {
        CombinedTableOfContentsView()
    }
}
