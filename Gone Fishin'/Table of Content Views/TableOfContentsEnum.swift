//
//  PoemListView.swift
//  C3 renamed Gone Fishin'
//
//  Created by Cameron Warner on 3/3/23.
//

import SwiftUI

struct TableOfContentsEnum: View {
    @State private var path = NavigationPath()
//    @State var index: Int = 0
    
    var body: some View {
        NavigationStack(path: $path){
            VStack{
//                Pages(currentPage: $index, navigationOrientation: .vertical,
//                      transitionStyle: .pageCurl
//                  )  {
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
                                    }
                                }
                            } //onTapGesture allows users to nav through enum
                    }//End of Lists
//                }//End of Pages
                .navigationTitle("Table of Contents")
                .navigationBarTitleDisplayMode(.automatic)
                .toolbar {
                    ToolbarItem(placement: .navigationBarTrailing) {
                               AboutView()
                            }
                        }// End of toolbar
                .navigationDestination(for: Chapter.self) { chapter in
                    switch chapter{
                    case .howToFish:
                        HowToFishView()
                    case .baiting:
                        RevisedHowToFishView()
                    case .wading:
                        RevisedHowToFishView()
                    case .goneFishin:
                        GoneFishin_View()
                    case .bigFishSmallPond:
                        RevisedHowToFishView()
                    case .hooked:
                        RevisedHowToFishView()
                    case .firstCatch:
                        FirstCatchView()
                    case .crabsInABucket:
                        RevisedHowToFishView()
                    case .catchNRelease:
                        CatchNReleaseView()
                    case .flyFishing:
                        RevisedHowToFishView()
                    case .trophies:
                        TrophiesView()
                    case .beyondTheHorizon:
                        RevisedHowToFishView()
                        
                    }//End of Switch
                }// End of Loop
                HStack{
                    BottomSheetView()
                }//End of HStack
               
                
            }//End of VStack
        }//End of Nav. Stack
    }
}

struct PoemListView_Previews: PreviewProvider {
    static var previews: some View {
        TableOfContentsEnum()
    }
}

//Table of Contents creation Courtesy of https://designcode.io/swiftui-handbook-navigation-stack

//&& Tom Philips of the Apple Developer Academy
