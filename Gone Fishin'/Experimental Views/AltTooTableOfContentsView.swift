//
//  AltTooTableOfContentsView.swift
//  C3
//
//  Created by Cameron Warner on 12/11/22.
//

import SwiftUI
import Foundation

struct AltTooTableOfContentsView: View {
    
    @State private var showDetails = false
    @State private var degrees = 0.0 //3D Animation Rotation
    @State private var isRotating = 0.0 // Continued Rotate
    
    @State private var isShowingIcon = false
    @State private var icon = "book.circle"
    
    
    
    var body: some View {
        NavigationStack {
            VStack {
                
                Button("Table of Contents") {
                    withAnimation {
                        showDetails.toggle()
                        self.degrees += 360
                    }
                }//End of Table of Contents Button
                .font(.largeTitle)
                .padding()
                .rotation3DEffect(.degrees(degrees), axis: (x: 1, y: 1, z: 1))
                
                //                .foregroundColor(.black)
                
                
                if showDetails {
                    HStack{
                        NavigationLink(destination: HowToFishView()) {
                            Image(systemName: "figure.fishing")
                                .imageScale(.large)
                            Text ("How to Fish")
                        }
                        Spacer()
                        
                    }//End of How To Fish
                    //.transition(.slide)
                    .transition(.scale)
                    
                    Divider()
                    HStack{
                        Image(systemName: "figure.fishing")
                            .imageScale(.large)
                        Text ("Gone Fishin'")
                        Spacer()
                        
                    }//End of Gone Fishin'
                    //.transition(.slide)
                    .transition(.scale)
                    
                    Divider()
                    HStack{
                        Image(systemName: "figure.fishing")
                            .imageScale(.large)
                        Text ("First Catch")
                        Spacer()
                        
                    }//End of First Catch
                    //                .transition(.move(edge: .bottom))
                    .transition(.scale)
                    
                    Divider()
                    HStack{
                        Image(systemName: "figure.fishing")
                            .imageScale(.large)
                        Text ("Catch & Release")
                        Spacer()
                        
                    }// End of Catch & Release
                    //.transition(.slide)
                    .transition(.scale)
                    
                    Divider()
                    HStack{
                        Image(systemName: "figure.fishing")
                            .imageScale(.large)
                        Text ("Trophies")
                        Spacer()
                        
                    }// End of Trophies
                    .transition(.scale)
                    
                }
                  
                
                
                Button(action: {
                    showDetails.toggle()
                    self.degrees += 360
                }, label: {
//                    Image("fishyHourglass")
                Image("fishyHourglass2")
                        .resizable()
                        .clipShape(Circle())
//                        .clipShape(RoundedRectangle(cornerRadius: 90.0))
                        .font(.system(size: 64))
                        .rotationEffect(.degrees(isRotating))
                        .onAppear {
                            withAnimation(.linear(duration: 1)
                                .speed(0.1).repeatForever(autoreverses: false)) {
                                    isRotating = 360.0
                                }
                        }
                       // .resizable()
                        //.rotation3DEffect(.degrees(degrees), axis: (x: 1, y: 1, z: 1))
                })
                
                
                
                //Experimental Button/ Image
                //https://serialcoder.dev/text-tutorials/swiftui/swiftui-image-buttons-with-alternative-images/
                
                
                
                
                
                
//                HStack{
//                    Button(action: {})
//                    {
//                                Image("fishyHourglass")
//                                .renderingMode(Image.TemplateRenderingMode?.init(Image.TemplateRenderingMode.original))
//                                .resizable()
//
//                            }
//                        }//End of Button HStack
                    
//                    Button ("fishyHourglass")
//                        .renderingMode(.original) {
//                        withAnimation {
//                            self.degrees += 360
//                        }
//                    }
                        //.resizable()
                        .scaledToFit()
                        .padding()
                
                
                //Bottom Sheet View
                Text ("test")
                Button("") {
                    isShowingIcon.toggle()
                }
                .buttonStyle(IconButton(systemImageName: icon))
                .font(.title)
                .fontWeight(.semibold)

                .sheet (isPresented: $isShowingIcon)
                        {
                            OptionalView
                                .presentationDetents([.medium,.large])
                                .presentationDetents([.fraction(0.2),.fraction(1)])
                                .presentationDragIndicator(.visible)
                                .padding()
                           }

                //Below from Youtube Tutorial
      //                Button {
      //                    showDetails.toggle()
      //                }
      //            label: {
      //                  Image(icon)
      //                        .buttonStyle(IconButton(systemImageName: icon))
      //                        .font(.title)
      //                        .fontWeight(.semibold)
      //                }
                    //.blurredSheet(.init(.ultraThinMaterial), show: $showDetails)
                    //Retrieved from
                //https://www.youtube.com/watch?v=NE1ZIK0PGTI
                
                //End of Bottom Sheet View
//
                
                Text ("and test")
             
                
            }// End of VStack
            .background(TestImageView())
            //.navigationTitle("Table of Contents")
            .navigationDestination(for: PoemFormat.self) { poemFormat in
                
                }
            }// End of Nav.Stack View
        }// End of var body: some View
    
    var OptionalView: some View {
        VStack(spacing: 20) {
            Text ("Area to Reflect")
            
            HStack(spacing: 16) {
                Button("") {
                        
                }
                .buttonStyle(IconButton(systemImageName: "mic"))
                .font(.title)
                .fontWeight(.semibold)
                
                Button("") {
                    isShowingIcon.toggle()
                }
                .buttonStyle(IconButton(systemImageName: "bookmark"))
                .font(.title)
                .fontWeight(.semibold)
                
                Button("") {
                    isShowingIcon.toggle()
                }
                .buttonStyle(IconButton(systemImageName: "pencil.tip"))
                .font(.title)
                .fontWeight(.semibold)
                
                Button("") {
                    isShowingIcon.toggle()
                }
                .buttonStyle(IconButton(systemImageName: "textformat.size"))
                .font(.title)
                .fontWeight(.semibold)
            }
            .foregroundColor(.black)
        }

    }// End of var: Optional View
}
    
    struct AltTooTableOfContentsView_Previews: PreviewProvider {
        static var previews: some View {
            AltTooTableOfContentsView()
        }
    }
    
    struct PoemFormat: Hashable {
        let title: String
        let imageName: String
    }// replace imageName w/ image in struct?
    
   
struct IconButton: ButtonStyle {
    let systemImageName: String
    
    func makeBody (configuration: Configuration) -> some View {
        Image (systemName: systemImageName)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .foregroundColor(.yellow)//changes icon color
            .frame(width: 33, height: 33)
            .padding()
            .background(Color .clear)
            //.clipShape(Circle())
    }
}

//Thanks to Sean Allen from Youtube for simplifiyng code and Nav. Stack/Link
//https://www.youtube.com/watch?v=oxp8Qqwr4AY

//StackOverflow image into button
//https://stackoverflow.com/questions/56820779/how-can-i-create-a-button-with-image-in-swiftui

//3D Animation = Button/ Image flip
//https://ashishkakkad.medium.com/swiftui-animations-3d-rotation-effect-fb8dd5b86df
