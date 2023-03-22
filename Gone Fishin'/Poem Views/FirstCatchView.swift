//
//  FirstCatchView.swift
//  C3 renamed Gone Fishin' 
//
//  Created by Cameron Warner on 12/10/22.
//

import SwiftUI


struct FirstCatchView: View {
  
var string = "FIRST CATCH"
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
            .onAppear
            {
                for i in string {
                    stringArray.append(String(i))
                }//End of for in
            }
            //            NavigationLink(destination: CatchNReleaseView()){
            Text("""
                 the excitement of completion
                 a thrill undefeated; conceited
                 surrounded by an isolated hue
                 encouraged by the calming view
                 \n
                 
                 an emotional freight trained off track
                 a master in the making; a progress to track
                 from humble beginnings; a process to trust
                 the first to tarnish from an everlasting rust
                 """)
            .padding(10)
            .multilineTextAlignment(.center)
        } //End of HStack
        HStack{
            BottomSheetView()
                .padding()
            TextFieldBottomSheetView()
        }//End of HStack
    }//End of VStack
//        }//End of Nav. Stack
        .navigationTitle("First Catch")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct FirstCatchView_Previews: PreviewProvider {
    static var previews: some View {
        FirstCatchView()
    }
}

// Letters stacked vertically Retrieved from https://www.hackingwithswift.com/forums/swiftui/vertical-text/16935
