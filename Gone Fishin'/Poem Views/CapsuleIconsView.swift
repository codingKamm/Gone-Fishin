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
                    .frame(width: 140, height: 40)
                    .foregroundColor(.white)
                HStack{
                    AboutView()
                    JournalIcon()
                    SettingsIconButton()
                }// End of HStack
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
