//
//  testTrophiesView.swift
//  PagesDemo
//
//  Created by Cameron Warner on 5/5/23.
//  Copyright © 2023 nachonavarro. All rights reserved.
//

import SwiftUI

struct testTrophiesView: View {
    var body: some View {
        VStack{
            Section{
                HStack{
                    Text("T")
                }
                HStack{
                    Text("R")
                }
                HStack{
                    Text("O")
                }
                HStack{
                    Text("P")
                }
                HStack{
                    Text("H")
                }
                HStack{
                    Text("I")
                }
                HStack{
                    Text("E")
                }
                HStack{
                    Text("S")
                }
                HStack{
                    Text("")
                }
            }
        }// End of VStack
        .font(.title)

    }
}

struct testTrophiesView_Previews: PreviewProvider {
    static var previews: some View {
        testTrophiesView()
    }
}
