//
//  TransitionPageView.swift
//  C3
//
//  Created by Cameron Warner on 3/6/23.
//

import SwiftUI

struct TransitionPageView: View {
    var body: some View {
      
            NavigationLink(destination: BackCoverView()){
                    Image(systemName: "chevron.right")
                        .font(.largeTitle)
                }
    }
}

struct TransitionPageView_Previews: PreviewProvider {
    static var previews: some View {
        TransitionPageView()
    }
}
