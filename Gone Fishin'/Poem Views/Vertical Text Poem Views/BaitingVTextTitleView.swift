//
//  BaitingVTextTitleView.swift
//  Gone Fishin'
//
//  Created by Cameron Warner on 6/1/23.
//

import SwiftUI

struct BaitingVTextTitleView: View {
    var body: some View {
        VStack{
            Section{
                HStack{
                    Text("B")
                }
                HStack{
                    Text("A")
                }
                HStack{
                    Text("I")
                }
                HStack{
                    Text("T")
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
        .font(.system(size: 60, design: .serif))
        .accessibility(hidden: true)


    }
}

struct BaitingVTextTitleView_Previews: PreviewProvider {
    static var previews: some View {
        BaitingVTextTitleView()
    }
}
