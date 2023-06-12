//
//  BeyondTheHorizonBackgroundView.swift
//  Gone Fishin'
//
//  Created by Cameron Warner on 6/2/23.
//

import SwiftUI

struct BeyondTheHorizonBackgroundView: View {
    @State var BeyondTheHorizonPoemAssets: String = ""
    var body: some View {

            Image(BeyondTheHorizonPoemAssets)
                .resizable()
                .ignoresSafeArea()
                .onAppear(perform: beyondTheHorizonTimer)
            
        }
        
        
        
        
        
        func beyondTheHorizonTimer(){
            var index = 1
            let timer = Timer.scheduledTimer(withTimeInterval: 0.97, repeats: true){ (Timer) in
                
                BeyondTheHorizonPoemAssets = "beyondTheHorizon\(index)"
                
                index += 1
                
                if (index > 2){
                    index = 1
                }
            }
            
        }
    }
struct BeyondTheHorizonBackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        BeyondTheHorizonBackgroundView()
    }
}
