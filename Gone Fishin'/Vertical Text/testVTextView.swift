//
//  testVTextView.swift
//  Gone Fishin'
//
//  Created by Cameron Warner on 5/5/23.
//

import SwiftUI

struct testVTextView: View {
    @State var VTextString = "GONE FISHIN'"
    
    var body: some View {
        VText(text: _VTextString)
    }
}

struct testVTextView_Previews: PreviewProvider {
    static var previews: some View {
        testVTextView()
    }
}
