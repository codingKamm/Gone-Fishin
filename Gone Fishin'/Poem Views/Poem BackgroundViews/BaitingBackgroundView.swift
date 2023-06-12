//
//  BaitingBackgroundView.swift
//  Gone Fishin'
//
//  Created by Cameron Warner on 6/2/23.
//

import SwiftUI

struct BaitingBackgroundView: View {
    @State var BaitingPoemAssets: String = ""
    var body: some View {

            Image(BaitingPoemAssets)
                .resizable()
                .ignoresSafeArea()
                .onAppear(perform: baitingTimer)
            
        }
        
        
        
        
        
        func baitingTimer(){
            var index = 1
            let timer = Timer.scheduledTimer(withTimeInterval: 0.97, repeats: true){ (Timer) in
                
                BaitingPoemAssets = "baiting\(index)"
                
                index += 1
                
                if (index > 2){
                    index = 1
                }
            }
            
    }
}

struct BaitingBackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        BaitingBackgroundView()
    }
}
