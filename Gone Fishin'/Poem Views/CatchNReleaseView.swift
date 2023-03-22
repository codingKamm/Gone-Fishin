//
//  CatchNReleaseView.swift
//  C3 renamed Gone Fishin' 
//
//  Created by Cameron Warner on 12/10/22.
//

import SwiftUI

struct CatchNReleaseView: View {
    var string = "CATCH & RELEASE"
    @State private var stringArray = [String]()
    
    var body: some View {
//        NavigationStack{
        VStack{
            HStack{
                VStack {
                    ForEach(stringArray, id: \.self) { i in
                        Text("\(i)\n")
                            .font(.headline)
//                            .lineLimit(1)
                            .truncationMode(.tail)
                            .fixedSize(horizontal: false, vertical: true)
                    }
                }// End of VStack
                .onAppear
                {
                    for i in string {
                        stringArray.append(String(i))
                    }//End of for in
                }
                //            NavigationLink(destination: TrophiesView()){
                Text("""
                         behind the scenes of curiosity
                         you’ll meet every opportunity
                         a constant fight; a timeless bout
                         counting losses, grudges, and doubt
                         \n just let it go..
                         """)
                .padding()
                .multilineTextAlignment(.center)
            }//End of HStack
            HStack{
                BottomSheetView()
                    .padding()
                TextFieldBottomSheetView()
            }//End of HStack
        }//End of VStack
//        }//End of Nav. Stack
        .navigationTitle("Catch & Release")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct CatchNReleaseView_Previews: PreviewProvider {
    static var previews: some View {
        CatchNReleaseView()
    }
}

// Letters stacked vertically Retrieved from https://www.hackingwithswift.com/forums/swiftui/vertical-text/16935
