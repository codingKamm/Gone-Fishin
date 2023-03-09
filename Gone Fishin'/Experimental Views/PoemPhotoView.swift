//
//  PoemPhotoView.swift
//  C3
//
//  Created by Cameron Warner on 12/7/22.
//

import SwiftUI
import Foundation

struct PoemPhotoView: View {
    var body: some View {
        VStack{
            Image("GoneFishin")
                .resizable()
                .scaledToFit()
                .aspectRatio(contentMode: .fit)
                .clipShape(RoundedRectangle(cornerRadius: 25.0))
            
            
                .padding()
            
            Image("HowToFish")
                .resizable()
                .scaledToFit()
                .aspectRatio(contentMode: .fit)
                
                .clipShape(Circle())
                
            
                .padding()
            
        }
    }
}
struct PoemPhotoView_Previews: PreviewProvider {
    static var previews: some View {
        PoemPhotoView()
    }
}

//All photos are royality free courtesy of
//https://pixabay.com
//OR created

//Photo Edits
//Retrieved from
//https://serialcoder.dev/text-tutorials/swiftui/swiftui-clip-shape-modifier-on-images/
