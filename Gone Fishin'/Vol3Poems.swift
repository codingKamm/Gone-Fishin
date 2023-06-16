//
//  Vol3Poems.swift
//  Gone Fishin'
//
//  Created by Cameron Warner on 6/13/23.
//

import SwiftUI
import Pages

struct Vol3Poems: View {
    @State var poemIndex3: Int = 0
    
    var body: some View {
    Pages(currentPage: $poemIndex3, navigationOrientation: .vertical, transitionStyle: .scroll, wrap: false){
        BeyondTheHorizonView()
    }//End of Pages Section Two
    .edgesIgnoringSafeArea(.all)
    }
}

struct Vol3Poems_Previews: PreviewProvider {
    static var previews: some View {
        Vol3Poems()
            .environmentObject(LocalNotificationManager())

    }
}
