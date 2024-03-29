//
//  ContentView.swift
//  C3
//
//  Created by Cameron Warner on 12/7/22.
//

import SwiftUI

struct TitlePageView: View {
    @State private var showingAlert = true
    @State var isActive: Bool = false

    var body: some View {
        VStack {
            if self.isActive{
                    PartOneCollectionView()
            } else {
               TransitionPage()
            }
        }// End of VStack
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
                withAnimation {
                    self.isActive = true
                }
            }
        }// End of onAppear
        
            }
        }
   
struct TitlePage_Previews: PreviewProvider {
    static var previews: some View {
        TitlePageView()
//            .environmentObject(LocalNotificationManager())

    }
}


//Images Retrieved
//https://pixabay.com/illustrations/fairy-tale-night-music-fish-sky-1180921/

//Nav. View Tutorial
//https://blog.devgenius.io/swiftui-tutorial-working-with-navigationview-2f72c18a30d1

// Alret Courtesy of https://www.hackingwithswift.com/quick-start/swiftui/how-to-show-an-alert#:~:text=SwiftUI%20lets%20us%20show%20alerts,builds%20on%20standard%20SwiftUI%20buttons. 

