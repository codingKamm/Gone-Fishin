//
//  PartTwoCollectionView.swift
//  Gone Fishin'
//
//  Created by Cameron Warner on 6/16/23.
//

import SwiftUI

struct PartTwoCollectionView: View {
    var myCustomColor = MyCustomColors()

    var body: some View {
//        NavigationStack{
        ZStack{
            Image("partTwo")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            Text("PART II")
                .font(.system(size: 30, design: .serif))
                .padding(.leading, 230)
                .padding(.bottom, 670)
            .foregroundColor(myCustomColor.partIICollectionTextColor)
                    }
//        .toolbar {
//            ToolbarItem(placement: .navigationBarTrailing) {
//                CapsuleIconsView()
//                }
//            }
            
            
//        }
    }
}

struct PartTwoCollectionView_Previews: PreviewProvider {
    static var previews: some View {
        PartTwoCollectionView()
    }
}
