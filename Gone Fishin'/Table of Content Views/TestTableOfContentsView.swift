//
//  TestTableOfContentsView.swift
//  C3 renamed Gone Fishin' 
//
//  Created by Cameron Warner on 3/6/23.
//

import SwiftUI

struct TestTableOfContentsView: View {
    
    var body: some View {
        NavigationStack{
            VStack{
                List{
                    NavigationLink(destination: HowToFishView()){ Text("How To Fish")}
                    NavigationLink(destination: GoneFishin_View()){ Text("Gone Fishin'")}
                    NavigationLink(destination: FirstCatchView()){ Text("First Catch")}
                    NavigationLink(destination: CatchNReleaseView()){ Text("Catch & Release")}
                    NavigationLink(destination: TrophiesView()){ Text("Trophies")}
                }//End of List
                .listStyle(.sidebar)
            }//End of VStack
            .navigationBarTitle("Table of Contents")
            .navigationBarTitleDisplayMode(.large)
            .navigationBarItems(trailing:
                    NavigationLink(destination: BackCoverView()){
                    Image(systemName: "chevron.right")
                    }
            )
        }//End of Nav. Stack
    }
}

struct TestTableOfContentsView_Previews: PreviewProvider {
    static var previews: some View {
        TestTableOfContentsView()
    }
}
