//
//  testGoneFishinTextView.swift
//  PagesDemo
//
//  Created by Cameron Warner on 5/5/23.
//  Copyright © 2023 nachonavarro. All rights reserved.
//

import SwiftUI

struct GoneFishinVTextTitleView: View {
    var body: some View {
        VStack{
            Section{
                HStack{
                    Text("G")
                }
                HStack{
                    Text("O")
                }
                HStack{
                    Text("N")
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
                    Text("N'")
                }
               
            }
        }// End of VStack
        .font(.system(size: 37, design: .serif))
        .accessibility(hidden: true)
        
    }
}


struct GoneFishinVTextTitleView_Previews: PreviewProvider {
    static var previews: some View {
        GoneFishinVTextTitleView()
    }
}
