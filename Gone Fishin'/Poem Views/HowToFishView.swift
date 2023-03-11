//
//  HowToFishView.swift
//  C3 renamed Gone Fishin' 
//
//  Created by Cameron Warner on 12/9/22.
//

import SwiftUI

struct HowToFishView: View {
    
    var string = "HOW TO FISH"
    @State private var stringArray = [String]()
    
    var body: some View {
        NavigationStack{
        VStack{
            HStack{
                VStack {
                    ForEach(stringArray, id: \.self) { i in
                        Text("\(i)\n")
                            .font(.headline)
                    }
                }// End of VStack
                .onAppear
                {
                    for i in string {
                        stringArray.append(String(i))
                    }
                }//end of for in
                //                NavigationLink(destination: GoneFishin_View()){
                Text("""
                         imagine an imposter among us
                         hooked on each line; it’s justice
                         it’s just us; a reality cast from each reel
                         syndromes ripple in form of what’s real
                         """)
                .multilineTextAlignment(.center)
                .padding()
            }//End of HStack
            HStack{
                BottomSheetView()
                    .padding()
                TextFieldBottomSheetView()
            }//End of HStack
        }//End of VStack
//        .navigationBarItems(trailing:
//                NavigationLink(destination: BackCoverView()){
//                Image(systemName: "chevron.right")
//                })//Ask Academy Mentor About Text Bug
        }//End of Nav. Stack
    }
}


struct HowToFishView_Previews: PreviewProvider {
    static var previews: some View {
        HowToFishView()
    }
}

//Image Retrieved from
//https://pixabay.com

// Vertical Title Text courtesy of https://www.hackingwithswift.com/forums/swiftui/vertical-text/16935
