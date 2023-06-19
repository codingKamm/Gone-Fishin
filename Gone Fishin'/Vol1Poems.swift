
import SwiftUI
import Pages

struct Vol1Poems: View {
    @State var poemIndex1: Int = 0

    var body: some View {
        ZStack{
            Pages(currentPage: $poemIndex1, navigationOrientation: .vertical, transitionStyle: .scroll, wrap: false) {
                HowToFishView()
                BaitingView()
                WadingView()
                GoneFishin_View()
                BigFishSmallPondView()
                HookedView()
            }// End of Table of Contents Views
            .edgesIgnoringSafeArea(.all)
            ScrollBlinkingArrowsUpDownView()
                .foregroundColor(.blue)
                .padding(.bottom, 720)
                .padding(.trailing, 290)
        }// End of ZStack
    }
}

    struct TableOfContentsPagesView_Previews: PreviewProvider {
    static var previews: some View {
        Vol1Poems()
            .environmentObject(LocalNotificationManager())

    }
}

// Page Transations Courtesy of https://github.com/nachonavarro/Pages
