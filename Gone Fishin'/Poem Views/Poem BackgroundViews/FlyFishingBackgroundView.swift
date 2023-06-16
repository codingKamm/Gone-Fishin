//
//  FlyFishingBackgroundView.swift
//  Gone Fishin'
//
//  Created by Cameron Warner on 6/2/23.
//

import SwiftUI

struct FlyFishingBackgroundView: View {
    var body: some View {
        Image("flyFishing")
            .resizable()
            .edgesIgnoringSafeArea(.all)
    }
}

struct FlyFishingBackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        FlyFishingBackgroundView()
    }
}
