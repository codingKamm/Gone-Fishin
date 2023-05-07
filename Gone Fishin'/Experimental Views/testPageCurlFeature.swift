//
//  testPageCurlFeature.swift
//  Gone Fishin'
//
//  Created by Cameron Warner on 5/6/23.
//

import SwiftUI
import UIKit
import Pages

struct Car {
    var model: String
}

struct testPageCurlFeature: View {
    let cars = [Car(model: "Ford"), Car(model: "Ferrari")]
    
    @State var index: Int = 0
    var body: some View {
        
        Pages(currentPage: $index) {
                    Text("Welcome! This is Page 1")
                    Text("This is Page 2")
                    Text("...and this is Page 3")
        }
    }
}
struct testPageCurlFeature_Previews: PreviewProvider {
    static var previews: some View {
        testPageCurlFeature()
    }
}
