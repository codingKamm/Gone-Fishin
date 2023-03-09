//
//  CoverPageView.swift
//  C3
//
//  Created by Cameron Warner on 12/20/22.
//

import SwiftUI

struct ContentView: View {

    var body: some View {
        NavigationView{
            VStack{
                NavigationLink(destination: TestTableOfContentsView()){
                    Image("coverPageToo")
                        .resizable()
                        .ignoresSafeArea(.all)
                }
            }
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
