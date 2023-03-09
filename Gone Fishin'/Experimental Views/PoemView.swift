//
//  PoemView.swift
//  C3
//
//  Created by Cameron Warner on 12/7/22.
//

import SwiftUI
import Foundation



struct PoemView: View {
    
    var body: some View {
        NavigationView{
            VStack{
                HStack{
//                    Text("Title")
//                        .font(.title)
////                        .frame(height:300)
//                        .padding(46)
                }
            
                Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit.")
                    .frame(width: 400)
                Text("Suspendisse non neque et nunc acilisis pretium in id urna.")
                    .frame(width: 400)
                Text("Nunc accumsan sapien id dapibus rutrum.")
                    .frame(width: 400)
                 //Crafting Stanzas for poem
                
                
               // Divider()
                Image("fishyDream")
                    .resizable()
                    .scaledToFit()
                
            }
            .navigationTitle("Title or E.M. Douglass") //Milk & Honey Inspo, thanks Krissie 
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}
    
struct PoemView_Previews: PreviewProvider {
    static var previews: some View {
        PoemView()
    }
}


//Unwrap App for Multi-Line String

