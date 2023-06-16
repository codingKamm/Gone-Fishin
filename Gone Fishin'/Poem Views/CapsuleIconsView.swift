//
//  CapsuleIconsView.swift
//  Gone Fishin'
//
//  Created by Cameron Warner on 6/16/23.
//

import SwiftUI

struct CapsuleIconsView: View {
    var body: some View {
        VStack{
            ZStack{
                Capsule()
                    .frame(width: 150, height: 50)
                    .foregroundColor(.white)
//                    .overlay(Image(systemName: "pencil"))
                HStack{
                    ChapterView()
                    JournalIcon()
                    AboutView()
                }
                .foregroundColor(.black)
            }//End of ZStack
         
            
        }
    }
}

struct CapsuleIconsView_Previews: PreviewProvider {
    static var previews: some View {
        CapsuleIconsView()
    }
}
