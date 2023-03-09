//
//  htfPicView.swift
//  C3
//
//  Created by Cameron Warner on 12/20/22.
//

import SwiftUI

struct htfPicView: View {
    
    var body: some View {
        
        VStack{
            Image("HTF")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .edgesIgnoringSafeArea(.all)
        }
    }
}

struct htfPicView_Previews: PreviewProvider {
    static var previews: some View {
        htfPicView()
    }
}
