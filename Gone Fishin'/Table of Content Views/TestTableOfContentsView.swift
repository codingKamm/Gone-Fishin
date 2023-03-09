//
//  TestTableOfContentsView.swift
//  C3
//
//  Created by Cameron Warner on 3/6/23.
//

import SwiftUI

struct TestTableOfContentsView: View {
    
    var body: some View {
        NavigationView{
            VStack{
                List{
                    NavigationLink(destination: HowToFishView()){ Text("How To Fish")}
                    NavigationLink(destination: GoneFishin_View()){ Text("Gone Fishin'")}
                    NavigationLink(destination: FirstCatchView()){ Text("First Catch")}
                    NavigationLink(destination: CatchNReleaseView()){ Text("Catch & Release")}
                    NavigationLink(destination: TrophiesView()){ Text("Trophies")}
                }//End of List
                .listStyle(.inset)
            }//End of VStack
            .navigationTitle("Table of Contents")
            .navigationBarItems(trailing:
                    NavigationLink(destination: BackCoverView()){
                    Image(systemName: "chevron.right")
                    }
            )
            .navigationBarBackButtonHidden(true)
        }//End of Nav. View
    }
}

struct TestTableOfContentsView_Previews: PreviewProvider {
    static var previews: some View {
        TestTableOfContentsView()
    }
}
