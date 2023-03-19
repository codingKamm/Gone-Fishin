//
//  PoemListView.swift
//  C3 renamed Gone Fishin'
//
//  Created by Cameron Warner on 3/3/23.
//

import SwiftUI




struct PoemListView: View {
    @State private var path = NavigationPath()
    
    var body: some View {
        NavigationStack(path: $path){
            List(poemLists, id: \.self) { poem in
                 NavigationLink(value: poem) {
                     Label{
                         Text(poem.title)
                     }
                 icon:{}
//                         .foregroundColor(.primary)
                 }//End of Nav. Link
                }//End of Lists
            .navigationTitle("Table of Contents")
            .navigationBarTitleDisplayMode(.automatic)
            .navigationDestination(for: PoemLists.self) { poem in
                   switch poem.tableOfContents{
                   case .howToFish:
                       HowToFishView()
                   case .goneFishin:
                       GoneFishin_View()
                   case .firstCatch:
                      FirstCatchView()
                   case .catchNRelease:
                       CatchNReleaseView()
                   case .trophies:
                       TrophiesView()
                   }//End of Switch
               }// End of Loop
        }//End of Nav. Stack
    }
}

struct PoemListView_Previews: PreviewProvider {
    static var previews: some View {
        PoemListView()
    }
}
