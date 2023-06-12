//
//  WaitingVTextTitleView.swift
//  Gone Fishin'
//
//  Created by Cameron Warner on 6/1/23.
//

import SwiftUI

struct WadingVTextTitleView: View {
    var body: some View {
        VStack{
            Section{
                HStack{
                    Text("W")
                }
                HStack{
                    Text("A")
                }
                HStack{
                    Text("D")
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

struct WadingVTextTitleView_Previews: PreviewProvider {
    static var previews: some View {
        WadingVTextTitleView()
    }
}
