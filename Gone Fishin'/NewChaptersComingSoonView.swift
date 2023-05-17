//
//  NewChaptersComingSoonView.swift
//  Gone Fishin'
//
//  Created by Cameron Warner on 5/6/23.
//

import SwiftUI

struct NewChaptersComingSoonView: View {
    var body: some View {
        Text(LocalizedStringKey("Thanks for reading! \nNew Poems Coming Soon!"))
            .font(.title2)
            .multilineTextAlignment(.center)
    }
}

struct NewChaptersComingSoonView_Previews: PreviewProvider {
    static var previews: some View {
        NewChaptersComingSoonView()
    }
}
