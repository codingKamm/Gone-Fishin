//
//  BeyondTheHorizonVTextTitleView.swift
//  Gone Fishin'
//
//  Created by Cameron Warner on 6/1/23.
//

import SwiftUI

struct BeyondTheHorizonVTextTitleView: View {
    var body: some View {
        VStack{
            Section{
                HStack{
                    Text("B")
                }
                HStack{
                    Text("E")
                }
                HStack{
                    Text("Y")
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
                HStack{
                    Text("")
                }
                HStack{
                    Text("")
                }
            }
            Section{
                HStack{
                    Text("T")
                }
                HStack{
                    Text("H")
                }
                HStack{
                    Text("E")
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
                    Text("H")
                }
                HStack{
                    Text("O")
                }
                HStack{
                    Text("R")
                } 
                HStack{
                    Text("I")
                }
                HStack{
                    Text("Z")
                }
                HStack{
                    Text("O")
                }
                HStack{
                    Text("N")
                }
            }
        }// End of VStack
        .font(.system(size: 33, design: .serif))
    }
}

struct BeyondTheHorizonVTextTitleView_Previews: PreviewProvider {
    static var previews: some View {
        BeyondTheHorizonVTextTitleView()
    }
}
