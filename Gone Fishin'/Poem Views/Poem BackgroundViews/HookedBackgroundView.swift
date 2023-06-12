//
//  HookedBackgroundView.swift
//  Gone Fishin'
//
//  Created by Cameron Warner on 6/2/23.
//

import SwiftUI

struct HookedBackgroundView: View {
    var body: some View {
            Image("hooked")
            .resizable()
            .edgesIgnoringSafeArea(.all)
        
    }
}

struct HookedBackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        HookedBackgroundView()
    }
}
