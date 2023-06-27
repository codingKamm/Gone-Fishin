//
//  testFirstCatchView.swift
//
//  Created by Cameron Warner on 5/5/23.
//

import SwiftUI

struct FirstCatchVTextTitleView: View {
    var body: some View {
        VStack{
            Section{
                HStack{
                    Text("F")
                }
                HStack{
                    Text("I")
                }
                HStack{
                    Text("R")
                }
                HStack{
                    Text("S")
                }
                HStack{
                    Text("T")
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
            }
        }// End of VStack
        .font(.system(size: 40, weight: .semibold, design: .serif))
        .accessibility(hidden: true)


    }
}

struct FirstCatchVTextTitleView_Previews: PreviewProvider {
    static var previews: some View {
        FirstCatchVTextTitleView()
    }
}
