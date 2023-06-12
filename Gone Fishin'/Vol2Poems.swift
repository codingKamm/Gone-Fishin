//
//  TableOfContentsPagesTwoView.swift
//  Gone Fishin'
//
//  Created by Cameron Warner on 6/2/23.
//

import SwiftUI
import Pages

struct Vol2Poems: View {
    @State var poemIndex2: Int = 0

    
    var body: some View {
        Pages(currentPage: $poemIndex2, navigationOrientation: .vertical, transitionStyle: .scroll, wrap: true){
            FirstCatchView()
            CrabsInABucketView()
            CatchNReleaseView()
            FlyFishingView()
            TrophiesView()
            BeyondTheHorizonView()
        }//End of Pages Section Two
        .edgesIgnoringSafeArea(.all)
    }
}

struct TableOfContentsPagesTwoView_Previews: PreviewProvider {
    static var previews: some View {
        Vol2Poems()
    }
}
