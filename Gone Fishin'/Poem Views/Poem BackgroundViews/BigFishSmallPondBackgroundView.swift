//
//  BigFishSmallPondBackgroundView.swift
//  Gone Fishin'
//
//  Created by Cameron Warner on 6/2/23.
//

import SwiftUI

struct BigFishSmallPondBackgroundView: View {
    var body: some View {
        Image("bigFishSmallPond")
            .resizable()
            .edgesIgnoringSafeArea(.all)
    }
}

struct BigFishSmallPondBackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        BigFishSmallPondBackgroundView()
    }
}
