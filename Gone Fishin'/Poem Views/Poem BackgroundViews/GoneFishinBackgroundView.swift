//
//  GoneFishinBackgroundView.swift
//  Gone Fishin'
//
//  Created by Cameron Warner on 6/2/23.
//

import SwiftUI

struct GoneFishinBackgroundView: View {
    var body: some View {

            Image("goneFishin")
                .resizable()
                .edgesIgnoringSafeArea(.all)
        }
}

struct GoneFishinBackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        GoneFishinBackgroundView()
    }
}
