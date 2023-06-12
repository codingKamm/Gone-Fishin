//
//  testCustomViewModifer.swift
//  Gone Fishin'
//
//  Created by Cameron Warner on 6/10/23.
//

import SwiftUI

struct testCustomViewModifer: ViewModifier {
    
    func body(content: Content) -> some View {
       finalContentView()
      }
    
}

//extension View {
//  func customButton() -> some View {
//    modifier(testCustomViewModifer())
//  }
//}


//struct testCustomViewModifer_Previews: PreviewProvider {
//    static var previews: some View {
//        testCustomViewModifer()
//    }
//}
