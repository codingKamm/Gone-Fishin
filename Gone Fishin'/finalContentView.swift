//
//  testPageCurlFeature.swift
//  Gone Fishin'
//
//  Created by Cameron Warner on 5/6/23.
//

import SwiftUI
import Pages


struct finalContentView: View {
//    @EnvironmentObject var lnManager: LocalNotificationManager
//    @Environment(\.scenePhase) var scenePhase
//    
    @State var index: Int = 0
    @State var poemIndex: Int = 0
 
    var body: some View {

     
        
        Pages(currentPage: $index, transitionStyle: .scroll, bounce: true, wrap: true) {
            TitlePageView()
            TransitionPage()
            TableOfContentsView()
            Vol1Poems()
            BackCoverView()
            Vol2Poems()
            NewChaptersComingSoonView()
        }
        .edgesIgnoringSafeArea(.all)
    }
}
struct testPageCurlFeature_Previews: PreviewProvider {
    static var previews: some View {
        finalContentView()
            .environmentObject(LocalNotificationManager())
            .environmentObject(EntryController())
            .environmentObject(User(name: "Friend"))

    }
}
