//
//  anotherTestVTextView.swift
//  Gone Fishin'
//
//  Created by Cameron Warner on 6/2/23.
//

import SwiftUI

struct anotherTestVTextView: View {
    var string = "HOW TO FISH"
    @State private var stringArray = [String]()
    
    var body: some View {
       
                VStack {
                    ForEach(stringArray, id: \.self) { i in
                        Text("\(i)\n")
                    }
                }.onAppear {
                    for i in string {
                        stringArray.append(String(i))
                    }
                }
            
    }
}

struct anotherTestVTextView_Previews: PreviewProvider {
    static var previews: some View {
        anotherTestVTextView()
    }
}

// Letters stacked vertically Retrieved from https://www.hackingwithswift.com/forums/swiftui/vertical-text/16935
