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
        ZStack{
            Pages(currentPage: $poemIndex2, navigationOrientation: .vertical, transitionStyle: .scroll, wrap: false){
                FirstCatchView()
                CrabsInABucketView()
                CatchNReleaseView()
                FlyFishingView()
                TrophiesView()
                BeyondTheHorizonView()
            }//End of Pages Section Two
            .edgesIgnoringSafeArea(.all)
            ScrollBlinkingArrowsUpDownView()
                .foregroundColor(.blue)
                .padding(.bottom, 750)
                .padding(.trailing, 290)
        }//End of ZStack
    }
}

struct TableOfContentsPagesTwoView_Previews: PreviewProvider {
    static var previews: some View {
        Vol2Poems()
            .environmentObject(LocalNotificationManager())

    }
}
