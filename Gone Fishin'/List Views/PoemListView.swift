//
//  PoemListView.swift
//  C3 renamed Gone Fishin'
//
//  Created by Cameron Warner on 3/3/23.
//

import SwiftUI




struct PoemListView: View {
    @State private var path = NavigationPath()
    
    var body: some View {
        NavigationStack(path: $path){
            VStack{
                List(Chapter.allCases, id: \.self) { chapter in
                    Label{
                        Text(chapter.title)
                        Spacer()
                        Image(systemName: "chevron.right")
                            .foregroundColor(.blue)
                    }
                icon:{}
                        .onTapGesture {
                            for number in 1...chapter.rawValue {
                                if let tableOfContents = Chapter(rawValue: number) {
                                    path.append(tableOfContents)
                                    //                                print(path)
                                }
                            }
                        } //onTapGesture allows users to nav through enum
                    
                    //                 }//End of Nav. Link
                }//End of Lists
                .navigationTitle("Table of Contents")
                //            .navigationBarItems(trailing:
                //                    NavigationLink(destination: BackCoverView()){
                //                    Image(systemName: "chevron.right")
                //                    }
                //                                ) //crashes app
                .navigationBarTitleDisplayMode(.automatic)
                
                .navigationDestination(for: Chapter.self) { chapter in
                    switch chapter{
                    case .howToFish:
                        HowToFishView()
                    case .goneFishin:
                        GoneFishin_View()
                    case .firstCatch:
                        FirstCatchView()
                    case .catchNRelease:
                        CatchNReleaseView()
                    case .trophies:
                        TrophiesView()
                    }//End of Switch
                }// End of Loop
           BottomSheetView()
            }//End of VStack
        }//End of Nav. Stack
    }
}

struct PoemListView_Previews: PreviewProvider {
    static var previews: some View {
        PoemListView()
    }
}

//Table of Contents creation Courtesy of https://designcode.io/swiftui-handbook-navigation-stack

//&& Tom Philips of the Apple Developer Academy
