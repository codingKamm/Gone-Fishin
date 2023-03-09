//
//  ListView.swift
//  C3
//
//  Created by Cameron Warner on 3/3/23.
//

import SwiftUI

struct Poem {
    var chapter : Int
    var name: String
}

var poems = [
Poem(chapter: 0, name: "How To Fish"),
Poem(chapter: 1, name: "Gone Fishin'"),
Poem(chapter: 2, name: "First Catch"),
Poem(chapter: 3, name: "Catch & Release"),
Poem(chapter: 4, name: "Trophies")
]

let poemList = [
    HowToFishView(),
    GoneFishin_View(),
    FirstCatchView(),
    CatchNReleaseView(),
    TrophiesView()
] as [Any]

//struct ListView: View {
//    var body: some View {
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//    }
//}
//
//struct ListView_Previews: PreviewProvider {
//    static var previews: some View {
//        ListView()
//    }
//}



//List built with courtesy to https://www.codecademy.com/article/building-lists-in-swiftui
