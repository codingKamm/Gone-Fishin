//
//  CoverPageView.swift
//  C3 renamed Gone Fishin' 
//
//  Created by Cameron Warner on 12/20/22.
//

import SwiftUI

struct ContentView: View {
    @State var isActive: Bool = false
    var body: some View {
//        NavigationStack{
            ZStack{
                if self.isActive{
                    TableOfContentsEnum()
                } else {
                    Image("coverPageToo")
                        .resizable()
                        .ignoresSafeArea(.all)
                }
            }// End of ZStack
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
                               withAnimation {
                                   self.isActive = true
                               }
                           }
            }
//        }// End of Nav. Stack
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


//Splash Screen coutresy of https://medium.com/@liyicky/how-to-make-a-splash-screen-in-swift-ui-83b02984a6ab


