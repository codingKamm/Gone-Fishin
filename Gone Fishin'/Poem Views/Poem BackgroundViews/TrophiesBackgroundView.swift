//
//  TrophiesBackgroundView.swift
//  Gone Fishin'
//
//  Created by Cameron Warner on 6/2/23.
//

import SwiftUI

struct TrophiesBackgroundView: View {
    @State var TrophiesPoemAssets: String = ""
    
    var body: some View {
        Image(TrophiesPoemAssets)
            .resizable()
            .edgesIgnoringSafeArea(.all)
            .onAppear(perform: trophiesTimer)
            .accessibility(hidden: true)

    }
    
    func trophiesTimer(){
        var index = 1
        _ = Timer.scheduledTimer(withTimeInterval: 0.97, repeats: true){ (Timer) in
            
            TrophiesPoemAssets = "trophies\(index)"
            
            index += 1
            
            if (index > 2){
                index = 1
            }
        }
    }
    
}

struct TrophiesBackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        TrophiesBackgroundView()
    }
}
