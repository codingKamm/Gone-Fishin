//
//  CrabsInABucketVTextTitleView.swift
//  Gone Fishin'
//
//  Created by Cameron Warner on 6/1/23.
//

import SwiftUI

struct CrabsInABucketVTextTitleView: View {
    var body: some View {
        VStack{
            Section{
                HStack{
                    Text("C")
                }
                HStack{
                    Text("R")
                }
                HStack{
                    Text("A")
                }
                HStack{
                    Text("B")
                }
                HStack{
                    Text("S")
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
                    Text("I")
                }
                HStack{
                    Text("N")
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
                    Text("A")
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
                    Text("B")
                }
                HStack{
                    Text("U")
                }
                HStack{
                    Text("C")
                }
                HStack{
                    Text("K")
                }
                HStack{
                    Text("E")
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
        }// End of VStack
        .font(.system(size: 30, weight: .bold, design: .serif))
        .accessibility(hidden: true)

    }
}

struct CrabsInABucketVTextTitleView_Previews: PreviewProvider {
    static var previews: some View {
        CrabsInABucketVTextTitleView()
    }
}
