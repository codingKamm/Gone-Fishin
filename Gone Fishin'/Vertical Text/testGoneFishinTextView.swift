//
//  testGoneFishinTextView.swift
//  PagesDemo
//
//  Created by Cameron Warner on 5/5/23.
//  Copyright © 2023 nachonavarro. All rights reserved.
//

import SwiftUI

struct testGoneFishinTextView: View {
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
                HStack{
                    Text("")
                }
            }
        }// End of VStack
            .font(.title)
        }
}


struct testGoneFishinTextView_Previews: PreviewProvider {
    static var previews: some View {
        testGoneFishinTextView()
    }
}
