//
//  HowToFishBackgroundView.swift
//  Gone Fishin'
//
//  Created by Cameron Warner on 6/2/23.
//

import SwiftUI

struct HowToFishBackgroundView: View {
    @State var HowToFishPoemAssets: String = ""
    var body: some View {

            Image("howToFish")
                .resizable()
                .ignoresSafeArea()
            
        }
            
}

struct HowToFishBackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        HowToFishBackgroundView()
    }
}
