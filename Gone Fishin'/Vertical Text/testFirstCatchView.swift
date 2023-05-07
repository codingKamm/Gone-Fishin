//
//  testFirstCatchView.swift
//  PagesDemo
//
//  Created by Cameron Warner on 5/5/23.
//  Copyright © 2023 nachonavarro. All rights reserved.
//

import SwiftUI

struct testFirstCatchView: View {
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
        .font(.title)

    }
}

struct testFirstCatchView_Previews: PreviewProvider {
    static var previews: some View {
        testFirstCatchView()
    }
}
