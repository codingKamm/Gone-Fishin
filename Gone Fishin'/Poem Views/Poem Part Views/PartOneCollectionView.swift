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
                .bold()
                .foregroundColor(.black)
                .padding(.top, 220)
                .padding(.leading, 90)
            VStack{
                Section{
                    Text("How to Fish")
                        .padding(.trailing, 20)
                    Spacer()
                    Text("Baiting")
                        .padding(.leading, 50)
                    Spacer()
                    Text("Wading")
                        .padding(.trailing, 70)
                    Spacer()
                } //End of Section 1
                Section{
                    Text("Gone Fishin’")
                        .padding(.leading, 50)
                    Spacer()
                    Text("Big Fish, Small Pond")
                        .padding(.leading, 50)
                    Spacer()
                    Text("Hooked")
                        .padding(.leading, 50)
                    
                    // Add Poem Titles
                }// End of Section 2
               
            }//End of VStack
            .font(.system(size: 24, weight: .semibold, design: .serif))
            .italic()
            .foregroundColor(.white)
            .padding(.bottom, 500)
            .padding(.trailing, 110)

        }//End of ZStack
        
    }
}

struct PartOneCollectionView_Previews: PreviewProvider {
    static var previews: some View {
        PartOneCollectionView()
    }
}
