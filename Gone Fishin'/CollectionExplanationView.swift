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
            Text("E.M. Douglass Presents \n Gone Fishin': A Poetry Book")
                .font(.headline)
            // Insert Image?
            Text("Exploring the depths and the mighty waves of creativity, Gone Fishin' exposes the affects of imposter syndrome. \n\n Idiomatically, Gone Fishin' details the progression of someone who is not very aware of what is happening around them. There is a growing pain during our learning curve as we strech towards the victory lap within the winner's circle.")
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
