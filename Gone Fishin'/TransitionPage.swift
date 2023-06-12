//
//  TransitionPage.swift
//  Gone Fishin'
//
//  Created by Cameron Warner on 5/27/23.
//

import SwiftUI

struct TransitionPage: View {
    var body: some View {
        VStack{
            Image("transitionPage")
                .resizable()
                .edgesIgnoringSafeArea(.all)
        }
    }
}

struct TransitionPage_Previews: PreviewProvider {
    static var previews: some View {
        TransitionPage()
    }
}
