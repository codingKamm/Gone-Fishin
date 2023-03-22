//
//  ListView.swift
//  C3 renamed Gone Fishin'
//
//  Created by Cameron Warner on 3/3/23.
//

import SwiftUI

enum Chapter: Int, CaseIterable {
    case howToFish = 1
    case goneFishin
    case firstCatch
    case catchNRelease
    case trophies
    
    var title: String {
        switch self {
        case .howToFish:
            return "How to Fish"
        case .goneFishin:
            return "Gone Fishin'"
        case .firstCatch:
            return "First Catch"
        case .catchNRelease:
            return "Catch & Release"
        case .trophies:
            return "Trophies"
        }
    }// End of var title
    var icon: String{
        switch self {
        case .howToFish:
             return "chevron.right"
        case .goneFishin:
            return "chevron.right"
        case .firstCatch:
            return "chevron.right"
        case .catchNRelease:
            return "chevron.right"
        case .trophies:
            return "chevron.right"
        }
    }// End of var icon
    
}// End of Chapter enum



// Extending NavigationPath to add a helper function to quickly empty the entire path
extension NavigationPath {
    mutating func removeAll() {
        while !self.isEmpty {
            self.removeLast()
        }
    }
}



//List built with courtesy to https://www.codecademy.com/article/building-lists-in-swiftui

//Table of Contents creation Courtesy of https://designcode.io/swiftui-handbook-navigation-stack

//&& Tom Philips of the Apple Developer Academy
