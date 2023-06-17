//
//  PartOneCollectionView.swift
//  Gone Fishin'
//
//  Created by Cameron Warner on 6/16/23.
//

import SwiftUI

struct PartOneCollectionView: View {
    var body: some View {
        ZStack{
            
            Image("partOne")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            Text("PART I")
                .font(.system(size: 60, design: .serif))
                .foregroundColor(.black)
                .padding(.top, 220)
                .padding(.leading, 90)

        }//End of ZStack
        
    }
}

struct PartOneCollectionView_Previews: PreviewProvider {
    static var previews: some View {
        PartOneCollectionView()
    }
}
