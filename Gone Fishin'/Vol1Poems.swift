
import SwiftUI
import Pages
import Haptics

struct Vol1Poems: View {
        //Haptic Feedback
    @Environment(\.scenePhase) var scenePhase


    @State var poemIndex1: Int = 0

    var body: some View {
        ZStack{
            Pages(currentPage: $poemIndex1, navigationOrientation: .vertical, transitionStyle: .scroll, wrap: false) {
                HowToFishView()
                    .triggersHapticFeedbackWhenAppear()

                BaitingView()
                    .triggersHapticFeedbackWhenAppear()

                WadingView()
                    .triggersHapticFeedbackWhenAppear()

                GoneFishin_View()
                    .triggersHapticFeedbackWhenAppear()

                BigFishSmallPondView()
                    .triggersHapticFeedbackWhenAppear()

                HookedView()
                    .triggersHapticFeedbackWhenAppear()

            }// End of Table of Contents Views
            .edgesIgnoringSafeArea(.all)
            .triggersHapticFeedbackWhenAppear()
            ScrollBlinkingArrowsUpDownView()
                .foregroundColor(.blue)
                .padding(.bottom, 720)
                .padding(.trailing, 290)
        }// End of ZStack
        .triggersHapticFeedbackWhenAppear()
    }
}

    struct TableOfContentsPagesView_Previews: PreviewProvider {
    static var previews: some View {
        Vol1Poems()
//            .environmentObject(LocalNotificationManager())

    }
}

// Page Transations Courtesy of https://github.com/nachonavarro/Pages
