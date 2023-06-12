//
//  CommonBackgroundView.swift
//  Gone Fishin'
//
//  Created by Cameron Warner on 6/2/23.
//

import SwiftUI

struct TableOfContentsBackgroundView: View {
    var body: some View {
        Image("starBackground")
            .resizable()
//            .aspectRatio(contentMode: .fill)
        
            .edgesIgnoringSafeArea(.all)
            .overlay() {
//                List(Chapter.allCases, id: \.self){ chapter in
//                    Label{
//                        Text(chapter.title)
//                    }
//
//                }//
                TestListView()
//                List{
//                    Text("How to Fish")
//                    //                    Text("How to Fish")
//                    //                    Text("How to Fish")
//                    //                    Text("How to Fish")
//                    //                    Text("How to Fish")
//                    //                    Text("How to Fish")
//                    //                    Text("How to Fish")
//                    //                    Text("How to Fish")
//                    //                    Text("How to Fish")
//                    //                    Text("How to Fish")
//                }
                .scrollContentBackground(.hidden)
                .listRowBackground(Color.black)
//                .foregroundColor(.white)
                .colorScheme(.dark)
                .padding(.all)
            }
    }
}

struct CommonBackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        TableOfContentsBackgroundView()
    }
}


// List BAckground Courtesy of https://stackoverflow.com/questions/73329549/swiftui-how-to-set-list-background-to-clear
