//
//  TextFieldIcon.swift
//  C3
//
//  Created by Cameron Warner on 3/6/23.
//

import SwiftUI

struct TextFieldIcon: View {
    var body: some View {
        Image(systemName: "pencil")
            .font(.title2)
    }
}

struct TextFieldIcon_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldIcon()
    }
}
