//
//  PrototypePoemView.swift
//  C3
//
//  Created by Cameron Warner on 12/15/22.
//

import SwiftUI

struct PrototypePoemView: View {
    
    var body: some View {
        HStack{
            VStack{//Title Font
                Spacer()//Lowers Text down
                Section {///HOW Title Font
                    HStack {
                        Text("H")
                    }//HStack Letter H
                    HStack{
                        Text("O")
                    }//HStack Letter O
                    HStack{
                        Text("W")
                    }//HStack Letter w
                }//HOW Title Font Section
                .font(.largeTitle)
//                .padding()
                Spacer()
                
                Section{ //TO title font
                    HStack{
                        Text("T")
//                            .font(.largeTitle)
//                            .padding()
                       // Spacer()//Moves Letters Left
                    }//HStack Letter T
                    HStack{
                        Text("O")
//                            .font(.largeTitle)
//                            .padding()
                        //Spacer()//Moves Letters Left
                    }//HStack Letter O
                }//End of TO Title Font Section
                .font(.largeTitle)
               // .padding()
                Spacer()
                
                Section{// FISH title font
                    HStack{
                        Text("F")
//                            .font(.largeTitle)
//                            .padding()
                        //                    Spacer()
                    }//HStack Letter F
                    HStack{
                        Text("I")
//                            .font(.largeTitle)
//                            .padding()
                        //                    Spacer()
                    }//HStack Letter I
                    HStack{
                        Text("S")
//                            .font(.largeTitle)
//                            .padding()
                        //                    Spacer()
                    }//HStack Letter S
                    HStack{
                        Text("H")
//                            .font(.largeTitle)
//                            .padding()
                        //                    Spacer()
                    }//HStack Letter H
                }//End of FISH title font section
                .font(.largeTitle)
               // .padding()
                Spacer()
                
            }//End of VStack: Title Font
            
            
            VStack{//Second column
                Section{//Organizes Stanza
                    Text ("imagine an imposter among us")
                    Text ("hooked on each line; it’s justice")
                    Text ("it’s just us; a reality cast from each reel")
                    Text ("syndromes ripple in form of what’s real")
                }
                .multilineTextAlignment(.center)
                .padding(1)
                //
                //                Text("                        ")
                Divider()
                Text ("imagine an imposter among us\nhooked on each line; it’s justice\nit’s just us; a reality cast from each reel\nsyndromes ripple in form of what’s real")
                    .multilineTextAlignment(.center)
            }//End of VStack: //Second column
            .padding()
            //            VStack{ //Third column
            //                Text ("    ")
            //                Text("                        ")
            //            }//End of VStack: Third column
        }//End of HStack
        .background(BackCoverView())// used image in new view to create background image
    }
}
struct PrototypePoemView_Previews: PreviewProvider {
    static var previews: some View {
        PrototypePoemView()
    }
}


//Image as background
//https://ix76y.medium.com/space-travel-app-part-1-creating-a-fullscreen-background-image-in-swiftui-beginner-tutorial-ca6f950b3b8 
