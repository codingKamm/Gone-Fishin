//
//  SettingsIcon.swift
//  Gone Fishin'
//
//  Created by Cameron Warner on 6/16/23.
//

import SwiftUI

struct SettingsIconButton: View {
    @State var presentSheet = false

    var body: some View {
        Button(action: { presentSheet = true}) {
            SettingsIconView()
        }
        .sheet(isPresented: $presentSheet) {
            SettingsView()
                .presentationDetents([.large])
                .presentationDragIndicator(.visible)
        }
    }
}

struct SettingsIcon_Previews: PreviewProvider {
    static var previews: some View {
        SettingsIconButton()
    }
}
