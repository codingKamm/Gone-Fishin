//
//  ScrollBlinkingArrowRightView.swift
//  Gone Fishin'
//
//  Created by Cameron Warner on 6/19/23.
//

import SwiftUI
import Combine

struct ScrollBlinkingArrowRightView: View {
    @State private var isAnimating = false
    let timer = Timer.publish(every: 0.6, on: .main, in: .common).autoconnect()
    var body: some View {
        VStack{
            Image(systemName: "arrow.right")
                .font(.headline)
                .scaleEffect(isAnimating ? 1.2 : 1.0)
                .opacity(isAnimating ? 0.2 : 1.0)
                .onReceive(timer) { _ in
                    withAnimation {
                        self.isAnimating.toggle()
                    }
                }
            Text("Scroll")
        }// End of VStack
       
        }
}

struct BlinkingView_Previews: PreviewProvider {
    static var previews: some View {
        ScrollBlinkingArrowRightView()
    }
}
