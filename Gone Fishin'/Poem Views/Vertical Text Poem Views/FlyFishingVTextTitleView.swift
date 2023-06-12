//
//  FlyFishingVTextTitleView.swift
//  Gone Fishin'
//
//  Created by Cameron Warner on 6/1/23.
//

import SwiftUI

struct FlyFishingVTextTitleView: View {
    var body: some View {
        VStack{
            Section{
                HStack{
                    Text("F")
                }
                HStack{
                    Text("L")
                }
                HStack{
                    Text("Y")
                }
                HStack{
                    Text("")
                }
                HStack{
                    Text("")
                }
            }
            Section{
                HStack{
                    Text("F")
                }
                HStack{
                    Text("I")
                }
                HStack{
                    Text("S")
                }
                HStack{
                    Text("H")
                }
                HStack{
                    Text("I")
                }
                HStack{
                    Text("N")
                }
                HStack{
                    Text("G")
                }
            }
        }// End of VStack
        .font(.system(size: 37, design: .serif))
    }
}

struct FlyFishingVTextTitleView_Previews: PreviewProvider {
    static var previews: some View {
        FlyFishingVTextTitleView()
    }
}
