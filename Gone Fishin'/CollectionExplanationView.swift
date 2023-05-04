//
//  CollectionExplanationView.swift
//  Gone Fishin'
//
//  Created by Cameron Warner on 5/4/23.
//

import SwiftUI

struct CollectionExplanationView: View {
    var body: some View {
        VStack{
            Text("E.M. Douglass Present Gone Fishin': A Poetry Book. ")
                .font(.headline)
            
            Text("\n\n Exploring the depths and the mighty waves of creativity, Gone Fishin' exposes the effects of imposter syndrome. \n\n Idiomatically, details someone who is not very aware of what is happening around them. The growing pain of our learning curves only prepares us for our victory lap around our winner's circle.")
                .padding()
            Text("This collection is exclusive to iOS.")
                .font(.footnote)
            
        }
        .padding()
        .multilineTextAlignment(.center)
    }
}

struct CollectionExplanationView_Previews: PreviewProvider {
    static var previews: some View {
        CollectionExplanationView()
    }
}
