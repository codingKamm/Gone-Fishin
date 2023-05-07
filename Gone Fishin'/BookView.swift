//
//  BookView.swift
//  Gone Fishin'
//
//  Created by Cameron Warner on 5/5/23.
//

import SwiftUI
import Pages

struct BookView: View {
    @State var index: Int = 0
    
    var body: some View {
        Pages(currentPage: $index, transitionStyle: .pageCurl, bounce: false) {
                TitlePageView()
//                TestTableOfContentsView()
                PoemListView()
                HowToFishView()
                GoneFishin_View()
                FirstCatchView()
                CatchNReleaseView()
                TrophiesView()
        }
        .edgesIgnoringSafeArea(.all)
        
    }
}

struct BookView_Previews: PreviewProvider {
    static var previews: some View {
        BookView()
    }
}
