//
//  htfPicView.swift
//  C3
//
//  Created by Cameron Warner on 12/20/22.
//

import SwiftUI

struct htfPicView: View {
    
    var body: some View {
     
        Image("boyFishing")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .edgesIgnoringSafeArea(.all)
//                .colorInvert()
        }
    }


struct htfPicView_Previews: PreviewProvider {
    static var previews: some View {
        htfPicView()
    }
}
