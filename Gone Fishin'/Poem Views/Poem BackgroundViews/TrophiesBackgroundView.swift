//
//  TrophiesBackgroundView.swift
//  Gone Fishin'
//
//  Created by Cameron Warner on 6/2/23.
//

import SwiftUI

struct TrophiesBackgroundView: View {
    var body: some View {
        Image("trophies")
            .resizable()
            .edgesIgnoringSafeArea(.all)
    }
}

struct TrophiesBackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        TrophiesBackgroundView()
    }
}
