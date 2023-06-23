//
//  TransitionPage.swift
//  Gone Fishin'
//
//  Created by Cameron Warner on 5/27/23.
//

import SwiftUI

struct TransitionPage: View {
    var body: some View {
        ZStack{
            Image("titlePageTree")
                .resizable()
                .padding()
                .edgesIgnoringSafeArea(.all)
            Text("Gone \nFishin'")
                .font(.system(size: 40, weight: .bold, design: .serif))
                .padding(.bottom, 670)
                .padding(.trailing, 180)
            Text("Vol. 1")
                .font(.system(size: 14, weight: .bold, design: .serif))
                .padding(.top, 750)
                .padding(.leading, 250)
            
        }// End of ZStack
     
    }
}

struct TransitionPage_Previews: PreviewProvider {
    static var previews: some View {
        TransitionPage()
//            .environmentObject(LocalNotificationManager())

    }
}
