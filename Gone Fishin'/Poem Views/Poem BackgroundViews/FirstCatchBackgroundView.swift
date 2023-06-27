//
//  FirstCatchBackgroundView.swift
//  Gone Fishin'
//
//  Created by Cameron Warner on 6/2/23.
//

import SwiftUI

struct FirstCatchBackgroundView: View {
    var body: some View {
        Image("firstCatch")
            .resizable()
            .edgesIgnoringSafeArea(.all)
            .accessibility(hidden: true)

    }
}

struct FirstCatchBackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        FirstCatchBackgroundView()
    }
}
