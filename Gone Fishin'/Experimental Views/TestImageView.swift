//
//  TestImageView.swift
//  C3
//
//  Created by Cameron Warner on 12/20/22.
//

import SwiftUI

struct TestImageView: View {
    
    var body: some View {
        
       Image("fishyHourglass2")
            .resizable()
            .scaledToFill()
            .edgesIgnoringSafeArea(.all)
    }
}

struct TestImageView_Previews: PreviewProvider {
    static var previews: some View {
        TestImageView()
    }
}
