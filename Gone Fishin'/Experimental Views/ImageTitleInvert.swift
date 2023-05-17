//
//  SwiftUIView.swift
//  Gone Fishin'
//
//  Created by Cameron Warner on 5/16/23.
//

import SwiftUI

struct ImageTitleInvert: View {
    var body: some View {
      
        
        
        @Environment(\.colorScheme) var colorScheme

        
              Image(colorScheme == .dark ? "titlePage" : "titlePage")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .edgesIgnoringSafeArea(.all)
//                .colorInvert()
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        ImageTitleInvert()
    }
}
