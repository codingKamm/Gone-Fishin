//
//  PoemListView.swift
//  C3
//
//  Created by Cameron Warner on 3/3/23.
//

import SwiftUI

struct PoemListView: View {
    let poemLists = poemList
    
    var body: some View {
        NavigationStack{
            List(poems, id: \.chapter) { poems in
                Text(poems.name)
            }
            .navigationTitle("Table of Contents")
            .navigationBarTitleDisplayMode(.automatic)
        }//End of Nav. Stack
    }
}

struct PoemListView_Previews: PreviewProvider {
    static var previews: some View {
        PoemListView()
    }
}
