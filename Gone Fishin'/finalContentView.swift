//
//  testPageCurlFeature.swift
//  Gone Fishin'
//
//  Created by Cameron Warner on 5/6/23.
//

import SwiftUI
import Pages
import Haptics


struct finalContentView: View {

    @State var index: Int = 0
    @State var poemIndex: Int = 0
 
    
    var body: some View {
        NavigationStack{
            Pages(currentPage: $index, transitionStyle: .scroll, bounce: true, wrap: true) {
                TitlePageView()
                    .triggersHapticFeedbackWhenAppear()

                Vol1Poems()
                    .triggersHapticFeedbackWhenAppear()

                PartTwoCollectionView()
                    .triggersHapticFeedbackWhenAppear()

                Vol2Poems()
                    .triggersHapticFeedbackWhenAppear()

                EndingThanksView()
                    .triggersHapticFeedbackWhenAppear()

                  
            }// End of Pages 
            
            .edgesIgnoringSafeArea(.all)
            .triggersHapticFeedbackWhenAppear()

            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    CapsuleIconsView()

                }
                
                
            }// End of Toolbar
        }
    }
}
struct testPageCurlFeature_Previews: PreviewProvider {
    static var previews: some View {
        finalContentView()
//            .environmentObject(LocalNotificationManager())
            .environmentObject(EntryController())
            .environmentObject(User(name: "Friend"))

    }
}
