//
//  RevisedPoemView.swift
//  Gone Fishin'
//
//  Created by Cameron Warner on 5/18/23.
//

import SwiftUI

struct RevisedHowToFishView: View {
    var body: some View {
        ZStack{
            Image("howToFish2")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
            HStack{
                Text("I")
                    .font(.largeTitle)
                    .padding(.bottom, 100)
                Text("magine an imposter among us hooked on each line; it’s justice it’s just us; a reality cast from each reel syndromes ripple in form of what’s real")
                    .padding(.bottom, 250)
            }
            .padding()
                .foregroundColor(.blue)
        }// End of HStack
    }
}

struct RevisedPoemView_Previews: PreviewProvider {
    static var previews: some View {
        RevisedHowToFishView()
    }
}
