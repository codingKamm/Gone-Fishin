//
//  ContentView.swift
//  C3
//
//  Created by Cameron Warner on 12/7/22.
//

import SwiftUI

struct TitlePageView: View {
    
    var body: some View {
       
        VStack {
            NavigationLink(destination: TestTableOfContentsView()) { //used to move between views
                    Image("titlePageTree")
                        .resizable()
                        .ignoresSafeArea()
            }//End of Nav. Link to Table of Contents View
            .padding()
                }
            }
        }
   
struct TitlePage_Previews: PreviewProvider {
    static var previews: some View {
        TitlePageView()
    }
}


//Images Retrieved
//https://pixabay.com/illustrations/fairy-tale-night-music-fish-sky-1180921/

//Nav. View Tutorial
//https://blog.devgenius.io/swiftui-tutorial-working-with-navigationview-2f72c18a30d1

