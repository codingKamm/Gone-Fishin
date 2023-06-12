//
//  CrabsInABucketBackgroundView.swift
//  Gone Fishin'
//
//  Created by Cameron Warner on 6/2/23.
//

import SwiftUI

struct CrabsInABucketBackgroundView: View {
    var body: some View {
            Image("crabsInABucket")
            .resizable()
            .edgesIgnoringSafeArea(.all)
    }
}

struct CrabsInABucketBackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        CrabsInABucketBackgroundView()
    }
}
