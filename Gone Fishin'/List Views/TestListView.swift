//
//  TestListView.swift
//  Gone Fishin'
//
//  Created by Cameron Warner on 6/2/23.
//

import SwiftUI

struct TestListView: View {
    @State private var path = NavigationPath()

    
    var body: some View {
        VStack{
            List(Chapter.allCases, id: \.self) { chapter in
                Label{
                    Text(chapter.title)
//                                .background(.clear)
//                                .foregroundColor(.white)
                    Spacer()
//                                                    Image(systemName: "chevron.right")
//                                                        .foregroundColor(.blue)
                }
            icon:{}
                    .onTapGesture {
                        for number in 1...chapter.rawValue {
                            if let tableOfContents = Chapter(rawValue: number) {
                                path.append(tableOfContents)
                            }
                        }
                    } //onTapGesture allows users to nav through enum
            }//End of Lists
            
            
            //Test Expanded List
         
            
        }//End of VStack
        .listStyle(.sidebar)
    }
}

struct TestListView_Previews: PreviewProvider {
    static var previews: some View {
        TestListView()
    }
}
