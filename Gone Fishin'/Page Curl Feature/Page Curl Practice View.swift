//
//  Page Curl Practice View.swift
//  Gone Fishin'
//
//  Created by Cameron Warner on 5/11/23.
//

import SwiftUI
import Pages

struct Page_Curl_Practice_View: View {
    
    @State var index: Int = 0
 
    var body: some View {

        Pages(currentPage: $index, transitionStyle: .pageCurl, bounce: true, wrap: true) {
                TitlePageView()
                TableOfContentsView()
                HowToFishView()
                GoneFishin_View()
                FirstCatchView()
            Button(action: {
                self.index = 3
            }) { CatchNReleaseView()
            }
                TrophiesView()
                BackCoverView()
                NewChaptersComingSoonView()
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct Page_Curl_Practice_View_Previews: PreviewProvider {
    static var previews: some View {
        Page_Curl_Practice_View()
    }
}
