//
//  testCatchNReleaseView.swift
//
//  Created by Cameron Warner on 5/5/23.
//

import SwiftUI

struct CatchNReleaseVTextTitleView: View {
    var body: some View {
        VStack{
            Section{
                HStack{
                    Text("C")
                }
                HStack{
                    Text("A")
                }
                HStack{
                    Text("T")
                }
                HStack{
                    Text("C")
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
                    Text("&")
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
                    Text("R")
                }
                HStack{
                    Text("E")
                }
                HStack{
                    Text("L")
                }
                HStack{
                    Text("E")
                }
                HStack{
                    Text("A")
                }
                HStack{
                    Text("S")
                }
                HStack{
                    Text("E")
                }
            }
        }// End of VStack
        .font(.system(size: 37, design: .serif))
        .accessibility(hidden: true)

    }
}

struct CatchNReleaseVTextTitleView_Previews: PreviewProvider {
    static var previews: some View {
        CatchNReleaseVTextTitleView()
    }
}
