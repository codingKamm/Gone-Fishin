//
//  CoverPageView.swift
//  C3 renamed Gone Fishin' 
//
//  Created by Cameron Warner on 12/20/22.
//

import SwiftUI

struct ContentView: View {

    var body: some View {
        NavigationStack{
            VStack{
                NavigationLink(destination: PoemListView()){
                    Image("coverPageToo")
                        .resizable()
                        .ignoresSafeArea(.all)
                }
            }// End of VStack
        }// End of Nav. Stack
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
