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
            Text("Submerged in the depths of creativity, Gone Fishin' explores the effects of Imposter Syndrome. \n\n Gone Fishin's mighty wave idiomatically details the progression of someone who is not very aware of what is happening around them. \n\nThe growing pains we experience during our learning curve is necessary. This preparation needed to prepare for the manifestation of our opportunities.")
                .padding()
            Text("This collection of poems is exclusive to iOS.")
                .font(.footnote) 
        }
        .padding()
        .multilineTextAlignment(.center)
        .preferredColorScheme(.dark)
        .foregroundColor(.white)
    }
}

struct CollectionExplanationView_Previews: PreviewProvider {
    static var previews: some View {
        CollectionExplanationView()
//            .environmentObject(LocalNotificationManager())

    }
}
