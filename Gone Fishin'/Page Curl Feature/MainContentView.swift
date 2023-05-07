//
//  OnboardingView.swift
//  PagesDemo
//
//  Created by Nacho Navarro on 03/11/2019.
//  Copyright © 2019 nachonavarro. All rights reserved.
//

import SwiftUI
import Pages

struct MainContentView: View {
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

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        MainContentView()
    }
}

// Page Transations Courtesy of https://github.com/nachonavarro/Pages
