//
//  ClearBackgroundView.swift
//  C3
//
//  Created by Cameron Warner on 12/15/22.
//

import SwiftUI

struct ClearBackgroundView: UIViewRepresentable {
        func makeUIView(context: Context) -> some UIView {
            let view = UIView()
            DispatchQueue.main.async {
                view.superview?.superview?.backgroundColor = .clear
            }
            return view
        }
        func updateUIView(_ uiView: UIViewType, context: Context) {
        }
    }

    struct ClearBackgroundViewModifier: ViewModifier {
        
        func body(content: Content) -> some View {
            content
                .background(ClearBackgroundView())
                .ignoresSafeArea(.all)
        }
    }

    extension View {
        func clearModalBackground()->some View {
            self.modifier(ClearBackgroundViewModifier())
        }
    }


struct ClearBackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        ClearBackgroundView()
    }
}


//Blurred .sheet Retrieved from:
//https://stackoverflow.com/questions/63745084/how-can-i-make-a-background-color-with-opacity-on-a-sheet-view
