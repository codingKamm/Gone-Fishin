//
//  ListView.swift
//  C3 renamed Gone Fishin'
//
//  Created by Cameron Warner on 3/3/23.
//

import SwiftUI

struct PoemLists: Identifiable, Hashable {
    var id = UUID()
    var title: String
    var chapter: Int
    var tableOfContents: TableOfContents
}

var poemLists = [
    PoemLists(title: "How To Fish", chapter: 1, tableOfContents: .howToFish),
    PoemLists(title: "Gone Fishin'", chapter: 2, tableOfContents: .goneFishin),
    PoemLists(title: "First Catch", chapter: 3, tableOfContents: .firstCatch),
    PoemLists(title: "Catch & Release", chapter: 4, tableOfContents: .catchNRelease),
    PoemLists(title: "Trophies", chapter: 5, tableOfContents: .trophies)
]

enum TableOfContents {
    case howToFish
    case goneFishin
    case firstCatch
    case catchNRelease
    case trophies
}



//List built with courtesy to https://www.codecademy.com/article/building-lists-in-swiftui

//Table of Contents creation Courtesy of https://designcode.io/swiftui-handbook-navigation-stack

//&& Tom Philips of the Apple Developer Academy
