//
//  Haptics.swift
//  Gone Fishin'
//
//  Created by Cameron Warner on 6/19/23.
//

import Foundation
import SwiftUI
import CoreHaptics


struct HapticFeedback: ViewModifier {
    private let generator: UIImpactFeedbackGenerator
    
    init(feedbackStyle: UIImpactFeedbackGenerator.FeedbackStyle) {
        generator = UIImpactFeedbackGenerator(style: feedbackStyle)
    }
    
    func body(content: Content) -> some View {
        content
            .onTapGesture {
                generator.impactOccurred()
            }
    }
}

extension View {
    func hapticFeedback(feedbackStyle: UIImpactFeedbackGenerator.FeedbackStyle = .heavy) -> some View {
        self.modifier(HapticFeedback(feedbackStyle: feedbackStyle))
    }
}
