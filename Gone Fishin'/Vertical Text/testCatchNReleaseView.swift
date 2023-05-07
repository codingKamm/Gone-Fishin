//
//  testCatchNReleaseView.swift
//  PagesDemo
//
//  Created by Cameron Warner on 5/5/23.
//  Copyright © 2023 nachonavarro. All rights reserved.
//

import SwiftUI

struct testCatchNReleaseView: View {
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
            }
            Section{
                HStack{
                    Text("N")
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
                HStack{
                    Text("")
                }
            }
        }// End of VStack
        .font(.title)

    }
}

struct testCatchNReleaseView_Previews: PreviewProvider {
    static var previews: some View {
        testCatchNReleaseView()
    }
}
