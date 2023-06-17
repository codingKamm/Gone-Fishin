//
//  SettingsIconView.swift
//  Gone Fishin'
//
//  Created by Cameron Warner on 6/16/23.
//

import SwiftUI

struct SettingsIconView: View {
    var body: some View {
        Image(systemName: "gear.circle.fill")
            .font(.headline)

    }
}

struct SettingsIconView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsIconView()
    }
}
