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
    @State var poemIndex: Int = 0
 
    var body: some View {

     
        
        Pages(currentPage: $index, transitionStyle: .scroll, bounce: true, wrap: true) {
                TitlePageView()
                TestTableOfContentsView()
       
        Pages(currentPage: $poemIndex, navigationOrientation: .vertical, transitionStyle: .scroll, wrap: true) {
                HowToFishView()
                GoneFishin_View()
                FirstCatchView()
                CatchNReleaseView()
                TrophiesView()
            }// End of Table of Contents Views
            
                BackCoverView()
            // add Create A Poem/ Journal View
                NewChaptersComingSoonView()
            BackCoverView()
        }
        .edgesIgnoringSafeArea(.all)
    }
}
struct testPageCurlFeature_Previews: PreviewProvider {
    static var previews: some View {
        finalContentView()
            .environmentObject(EntryController())
            .environmentObject(User(name: "Friend"))
    }
}
