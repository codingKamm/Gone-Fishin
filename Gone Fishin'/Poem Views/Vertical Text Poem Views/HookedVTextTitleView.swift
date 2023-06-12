//
//  HookedVTextTitleView.swift
//  Gone Fishin'
//
//  Created by Cameron Warner on 6/1/23.
//

import SwiftUI

struct HookedVTextTitleView: View {
    var body: some View {
        VStack{
            Section{
                HStack{
                    Text("H")
                }
                HStack{
                    Text("O")
                }
                HStack{
                    Text("O")
                }
                HStack{
                    Text("K")
                }
                HStack{
                    Text("E")
                }
                HStack{
                    Text("D")
                }
            
            }
        }// End of VStack
        .font(.system(size: 37, design: .serif))
    }
}

struct HookedVTextTitleView_Previews: PreviewProvider {
    static var previews: some View {
        HookedVTextTitleView()
    }
}
