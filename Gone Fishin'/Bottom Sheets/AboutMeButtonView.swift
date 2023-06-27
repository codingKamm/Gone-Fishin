//
//  AboutMeButtonView.swift
//  Gone Fishin'
//
//  Created by Cameron Warner on 5/4/23.
//

import SwiftUI

struct AboutMeButtonView: View {
    var body: some View {
       Image(systemName: "info")
            .font(.headline)
            .accessibilityLabel("Collection Info")
    }
}

struct AboutMeButtonView_Previews: PreviewProvider {
    static var previews: some View {
        AboutMeButtonView()
    }
}
