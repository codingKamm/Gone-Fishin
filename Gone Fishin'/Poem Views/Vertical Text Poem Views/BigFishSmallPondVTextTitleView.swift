//
//  BigFishSmallPondVTextTitleView.swift
//  Gone Fishin'
//
//  Created by Cameron Warner on 6/1/23.
//

import SwiftUI

struct BigFishSmallPondVTextTitleView: View {
    var body: some View {
        VStack{
            Section{
                HStack{
                    Text("B")
                }
                HStack{
                    Text("I")
                }
                HStack{
                    Text("G")
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
                    Text("")
                }
                HStack{
                    Text("")
                }
            }
            Section{
                HStack{
                    Text("S")
                }
                HStack{
                    Text("M")
                }
                HStack{
                    Text("A")
                }
                HStack{
                    Text("L")
                }
                HStack{
                    Text("L")
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
                    Text("P")
                }
                HStack{
                    Text("O")
                }
                HStack{
                    Text("N")
                }
                HStack{
                    Text("D")
                }
            }
        }// End of VStack
        .font(.system(size: 30, design: .serif))
        .accessibility(hidden: true)

    }
}

struct BigFishSmallPondVTextTitleView_Previews: PreviewProvider {
    static var previews: some View {
        BigFishSmallPondVTextTitleView()
    }
}
