//
//  EndingThanksView.swift
//  Gone Fishin'
//
//  Created by Cameron Warner on 6/17/23.
//

import SwiftUI

struct EndingThanksView: View {
    var body: some View {
        ZStack{
            Image("endingThanks", label: Text("Ending Page"))
                .resizable()
                .edgesIgnoringSafeArea(.all)
            Text("""
                We're thrilled to announce more poetry\nvolumes and merchandise coming soon.\nStay tuned for updates. Your presence\n means the world to us.\n
                With gratitude,
                """)
            .font(Font.custom("Bangla-Sangam-MN-Bold", size: 19))
            .foregroundColor(.white)
            .multilineTextAlignment(.center)
            .padding(.top, 400)
        }//End of ZStack
    }
}

struct EndingThanksView_Previews: PreviewProvider {
    static var previews: some View {
        EndingThanksView()
    }
}
