//
//  PrototypePoemView.swift
//  C3
//
//  Created by Cameron Warner on 12/15/22.
//

import SwiftUI

struct PrototypePoemViewToo: View {
    
    @State private var isShowingIcon = false
    @State private var icon = "book.circle"
    
    var body: some View {
        NavigationLink(destination: AcknowledgementView()) {
            HStack{
                Spacer()// Pushes Title away from edge
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
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    Spacer()
                    
                    Section{ //TO title font
                        HStack{
                            Text("T")
                        }//HStack Letter T
                        HStack{
                            Text("O")
                        }//HStack Letter O
                    }//End of TO Title Font Section
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    Spacer()
                    
                    Section{// FISH title font
                        HStack{
                            Text("F")
                        }//HStack Letter F
                        HStack{
                            Text("I")
                        }//HStack Letter I
                        HStack{
                            Text("S")
                        }//HStack Letter S
                        HStack{
                            Text("H")
                        }//HStack Letter H
                    }//End of FISH title font section
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    Spacer()
                }//End of VStack: Title Font
                
                
                VStack{//Second column
                    Spacer()//Pushes down VStack
                    Section{//Organizes Stanza
                        Spacer()
                    }
                    .padding(1)
                    Text ("imagine an imposter among us\nhooked on each line; it’s justice\nit’s just us; a reality cast from each reel\nsyndromes ripple in form of what’s real")
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                        .fontWeight(.semibold)
                    
                    
                    //Bottom Sheet View
                    Spacer()//Pushes Down Button
                   
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
                    
                    
                    
                }//End of VStack: //Second column
                .padding()
                
            }//End of HStack
            .background(htfPicView())// used image in new view to create background image
        }//End of Nav Link
    }
}

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
            }
            .buttonStyle(IconButton(systemImageName: "bookmark"))
            .font(.title)
            .fontWeight(.semibold)
            
            Button("") {
            }
            .buttonStyle(IconButton(systemImageName: "pencil.tip"))
            .font(.title)
            .fontWeight(.semibold)
            
            Button("") {
            }
            .buttonStyle(IconButton(systemImageName: "textformat.size"))
            .font(.title)
            .fontWeight(.semibold)
        }
    }

}// End of var: Optional View


struct PrototypePoemViewToo_Previews: PreviewProvider {
    static var previews: some View {
        PrototypePoemViewToo()
    }
}


//Image as background
//https://ix76y.medium.com/space-travel-app-part-1-creating-a-fullscreen-background-image-in-swiftui-beginner-tutorial-ca6f950b3b8
