//
//  testVerticalStringView.swift
//  PagesDemo
//
//  Created by Cameron Warner on 5/5/23.
//  Copyright © 2023 nachonavarro. All rights reserved.
//

import SwiftUI

struct testHowToFishView: View {
    
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
                    Text("W")
                }
                HStack{
                    Text("")
                }
            }
            Section{
                HStack{
                    Text("T")
                }
                HStack{
                    Text("O")
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
            }
        }// End of VStack
        .font(.title)
    }
     
  
}

struct testVerticalStringView_Previews: PreviewProvider {
    static var previews: some View {
        testHowToFishView()
    }
}
