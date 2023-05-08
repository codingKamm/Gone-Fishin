//
//  testPageCurlFeature.swift
//  Gone Fishin'
//
//  Created by Cameron Warner on 5/6/23.
//

import SwiftUI
import Pages


struct finalContentView: View {
    @State var index: Int = 0
 
    var body: some View {

        Pages(currentPage: $index, transitionStyle: .scroll, bounce: true) {
                TitlePageView()
                TestTableOfContentsView()
                HowToFishView()
                GoneFishin_View()
                FirstCatchView()
                CatchNReleaseView()
                TrophiesView()
                BackCoverView()
                NewChaptersComingSoonView()


        }
        .edgesIgnoringSafeArea(.all)
    }
}
struct testPageCurlFeature_Previews: PreviewProvider {
    static var previews: some View {
        finalContentView()
    }
}
