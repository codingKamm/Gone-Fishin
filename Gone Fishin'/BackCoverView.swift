//
//  BackCoverView.swift
//  C3
//
//  Created by Cameron Warner on 12/9/22.
//

import SwiftUI

struct BackCoverView: View {
    
    var body: some View {
        
        Image("backCover")
            .resizable()
            .ignoresSafeArea()
            .navigationBarBackButtonHidden(true)
    }
}

struct BackCoverView_Previews: PreviewProvider {
    static var previews: some View {
        BackCoverView()
    }
}

//Image Retrieved
//https://pixabay.com/illustrations/fairy-tale-night-music-fish-sky-1180921/

