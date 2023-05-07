//
//  NewTableOfContentsView.swift
//  C3
//
//  Created by Cameron Warner on 3/6/23.
//

import SwiftUI

struct NewTableOfContentsView: View {
    var body: some View {
        NavigationStack{
            VStack{
                TableOfContentsEnum()
                    .navigationBarItems(trailing:
                                            NavigationLink(destination: TitlePageView()){
                        Image(systemName: "chevron.right")
                    }
                    )
            }// End of VStack
        }// End of Nav. Stack
    }
}

struct NewTableOfContentsView_Previews: PreviewProvider {
    static var previews: some View {
        NewTableOfContentsView()
    }
}
