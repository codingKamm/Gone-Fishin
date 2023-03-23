//
//  LabelIconView.swift
//  Gone Fishin'
//
//  Created by Cameron Warner on 3/21/23.
//

import SwiftUI

struct LabelIconView: View {
    var body: some View {
        VStack{
            Label("Gone Fishin'", image: "fishingIcon")
                .font(.largeTitle)
                .labelStyle(.titleOnly)
            
            Label("Gone Fishin'", image: "fishingIcon")
                .labelStyle(.iconOnly)
        }
    }
}

struct LabelIconView_Previews: PreviewProvider {
    static var previews: some View {
        LabelIconView()
    }
}


//Label courtesy of https://sarunw.com/posts/swiftui-label-a-standard-way-to-label-user-interface-items/
