//
//  OnboardingView.swift
//  PagesDemo
//
//  Created by Nacho Navarro on 03/11/2019.
//  Copyright © 2019 nachonavarro. All rights reserved.
//

import SwiftUI
import Pages

struct Vol1Poems: View {
    @State var index: Int = 0
    @State var poemIndex1: Int = 0

    var body: some View {
       
        Pages(currentPage: $poemIndex1, navigationOrientation: .vertical, transitionStyle: .scroll, wrap: true) {
            HowToFishView()
            BaitingView()
            WadingView()
            GoneFishin_View()
            BigFishSmallPondView()
            HookedView()
          
           
            
            
            }// End of Table of Contents Views
        .edgesIgnoringSafeArea(.all)
    }
}

    struct TableOfContentsPagesView_Previews: PreviewProvider {
    static var previews: some View {
        Vol1Poems()
    }
}

// Page Transations Courtesy of https://github.com/nachonavarro/Pages
