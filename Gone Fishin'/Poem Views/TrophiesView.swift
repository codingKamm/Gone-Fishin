//
//  TrophiesView.swift
//  C3 renamed Gone Fishin' 
//
//  Created by Cameron Warner on 12/10/22.
//

import SwiftUI

struct TrophiesView: View {
    var string = "TROPHIES"
    @State private var stringArray = [String]()
    
    var body: some View {
//        NavigationStack{
        VStack{
            HStack{
                VStack {
                    ForEach(stringArray, id: \.self) { i in
                        Text("\(i)\n")
                            .font(.headline)
                    }
                }//End of VStack
                .padding()
                .onAppear
                {
                    for i in string {
                        stringArray.append(String(i))
                    }//End of for in
                }
                //            NavigationLink(destination: AcknowledgementView()){
                Text("""
                 prized catches dripping wet
                 a mount to nothing
                 except golden silhouettes
                 an amount of nothing
                 accept the cost of regrets
                 some amount to something
                 an interest left to recollect
                 """)
                .padding()
                .multilineTextAlignment(.center)
            } //End of HStack
            HStack{
                BottomSheetView()
                    .padding()
                TextFieldBottomSheetView()
            }//End of HStack
        }//End of VStack
//        }//End of Nav. Stack
        .navigationTitle("Trophies")
        .navigationBarTitleDisplayMode(.inline)
    }
}


struct TrophiesView_Previews: PreviewProvider {
    static var previews: some View {
        TrophiesView()
    }
}

// Letters stacked vertically Retrieved from https://www.hackingwithswift.com/forums/swiftui/vertical-text/16935
