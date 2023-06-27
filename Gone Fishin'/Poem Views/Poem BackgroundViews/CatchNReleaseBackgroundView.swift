//
//  CatchNReleaseBackgroundView.swift
//  Gone Fishin'
//
//  Created by Cameron Warner on 6/2/23.
//

import SwiftUI

struct CatchNReleaseBackgroundView: View {
    var body: some View {
        Image("catchNRelease")
            .resizable()
            .edgesIgnoringSafeArea(.all)
            .accessibility(hidden: true)
    }
}

struct CatchNReleaseBackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        CatchNReleaseBackgroundView()
    }
}
