//
//  TestAssetsAnimation.swift
//  Gone Fishin'
//
//  Created by Cameron Warner on 6/2/23.
//

import SwiftUI




struct WadingBackgroundView: View {
    @State var WadingPoemAssets: String = ""
    
    
    var body: some View {
        Image(WadingPoemAssets)
            .resizable()
            .ignoresSafeArea()
            .onAppear(perform: wadingTimer)
        
    }
    
    
    
    
    
    func wadingTimer(){
        var index = 1
        _ = Timer.scheduledTimer(withTimeInterval: 0.97, repeats: true){ (Timer) in
            
            WadingPoemAssets = "wading\(index)"
            
            index += 1
            
            if (index > 3){
                index = 1
            }
        }
        
    }
}

struct TestAssetsAnimation_Previews: PreviewProvider {
    static var previews: some View {
        WadingBackgroundView()
    }
}


