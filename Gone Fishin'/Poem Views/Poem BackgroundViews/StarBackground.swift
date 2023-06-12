//
//  StarBackground.swift
//  Gone Fishin'
//
//  Created by Cameron Warner on 6/5/23.
//

import SwiftUI

struct StarBackground: View {
    var body: some View {
        Image("starBackground")
            .resizable()
            .edgesIgnoringSafeArea(.all)
    }
}

struct StarBackground_Previews: PreviewProvider {
    static var previews: some View {
        StarBackground()
    }
}
