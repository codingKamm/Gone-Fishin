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
        ZStack{
            Image("partTwo")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            Text("PART II")
                .font(.system(size: 30, design: .serif))
                .bold()
                .padding(.leading, 230)
                .padding(.bottom, 670)
                .foregroundColor(myCustomColor.partIICollectionTextColor)
            VStack(alignment: .leading){
                    Text("First Catch")
                    Text("Crabs in a Bucket")
                    Text("Catch & Release")
                    Text("Fly Fishing")
                    Text("Trophies")
                    Text("Beyond The Horizon")
            }//End of VStack
            .font(.system(size: 24, weight: .semibold, design: .serif))
            .multilineTextAlignment(.leading)
            .italic()
            .foregroundColor(.white)
            .padding(.bottom, 100)
            .padding(.trailing, 110)
        }// End of ZStack

    }
}

struct PartTwoCollectionView_Previews: PreviewProvider {
    static var previews: some View {
        PartTwoCollectionView()
    }
}
