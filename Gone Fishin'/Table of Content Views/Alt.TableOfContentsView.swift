//
//  Alt.TableOfContentsView.swift
//  C3
//
//  Created by Cameron Warner on 12/9/22.
//

import SwiftUI

struct Alt_TableOfContentsView: View {
    @State private var showDetails = false //Table of Contents Toggle
    @State private var degrees = 0.0 //3D Animation Rotation
    
    var body: some View {
       
            VStack {
                Button("Table of Contents") {
                        withAnimation {
                            showDetails.toggle()
                            self.degrees += 360
                        }
                    }//End of Table of Contents Button
                .font(.largeTitle)
                .padding()
                .rotation3DEffect(.degrees(degrees), axis: (x: 1, y: 1, z: 1))//Rotates Title 

            if showDetails {
                HStack{ 
                    NavigationLink(destination: HowToFishView()) {
                        Image(systemName:"")
                            .imageScale(.large)
                        Text ("How to Fish")
                    }
                    Spacer()
               
                }//End of How To Fish
                //.transition(.slide)
                .transition(.scale)
                
                Divider()
                HStack{
                    NavigationLink(destination: GoneFishin_View()){
                        Image(systemName: "")
                            .imageScale(.large)
                        Text ("Gone Fishin'")
                    }
                    Spacer()
                }//End of Gone Fishin'
               .transition(.scale)
                
                Divider()
                HStack{
                    NavigationLink(destination: FirstCatchView()) {
                        Image(systemName: "")
                            .imageScale(.large)
                        Text ("First Catch")
                        Spacer()
                    }
                    
                }//End of First Catch
//                .transition(.move(edge: .bottom))
                .transition(.scale)

                Divider()
                HStack{
                    NavigationLink(destination: CatchNReleaseView()){
                        Image(systemName: "")
                            .imageScale(.large)
                        Text ("Catch & Release")
                        Spacer()
                    }
                }// End of Catch & Release
                //.transition(.slide)
                .transition(.scale)
                
                Divider()
                HStack{
                    Image(systemName: "")
                        .imageScale(.large)
                    NavigationLink(destination: TrophiesView()){
                        Text ("Trophies")
                        Spacer()
                    }
                }// End of Trophies
                .transition(.scale)
            
                
            }
                
                Button(action: {
                    showDetails.toggle()
                    self.degrees += 360
                }, label: { withAnimation {
                    Image("fishyHourglass")
                        .resizable()
                        .scaledToFit()
                        .rotation3DEffect(.degrees(degrees), axis: (x: 1, y: 1, z: 1))
                } })
               .padding()
          
                
              
                
            }// End of VStack
                // End of Nav.Link View
            } 
        }


struct Alt_TableOfContentsView_Previews: PreviewProvider {
    static var previews: some View {
        Alt_TableOfContentsView()
    }
}


//3D Animation = Button/ Image flip
//https://ashishkakkad.medium.com/swiftui-animations-3d-rotation-effect-fb8dd5b86df

//Experimental Button/ Image
//https://serialcoder.dev/text-tutorials/swiftui/swiftui-image-buttons-with-alternative-images/

//Image Retrieved from
//https://pixabay.com

//StackOverflow image into button
//https://stackoverflow.com/questions/56820779/how-can-i-create-a-button-with-image-in-swiftui

//Thanks to Sean Allen from Youtube for simplifiyng code and Nav. Stack/Link
//https://www.youtube.com/watch?v=oxp8Qqwr4AY

//Transitions retrieved from:
//https://www.hackingwithswift.com/quick-start/swiftui/how-to-add-and-remove-views-with-a-transition
