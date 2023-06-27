//
//  CrabsInABucketBackgroundView.swift
//  Gone Fishin'
//
//  Created by Cameron Warner on 6/2/23.
//

import SwiftUI

struct CrabsInABucketBackgroundView: View {
    @State var CrabsInABucketPoemAssets: String = ""

    var body: some View {
            Image(CrabsInABucketPoemAssets)
            .resizable()
            .edgesIgnoringSafeArea(.all)
            .onAppear(perform: crabsInABucketTimer)
            .accessibility(hidden: true)

    }
    func crabsInABucketTimer(){
        var index = 1
        _ = Timer.scheduledTimer(withTimeInterval: 0.97, repeats: true){ (Timer) in
            
            CrabsInABucketPoemAssets = "crabsInABucket\(index)"
            
            index += 1
            
            if (index > 2){
                index = 1
            }
        }
        
    }
    
    
}

struct CrabsInABucketBackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        CrabsInABucketBackgroundView()
    }
}
