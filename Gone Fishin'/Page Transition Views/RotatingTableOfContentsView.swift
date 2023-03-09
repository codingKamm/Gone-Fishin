//
//  RotatingTableOfContentsView.swift
//  C3
//
//  Created by Cameron Warner on 12/19/22.
//

import SwiftUI

struct RotatingTableOfContentsView: View {
    @State private var isRotating = 0.0 // Rotates Image
    
    
    @State private var showIcon = false
    @State private var icon = "book.circle"
    
    var body: some View {


        VStack{
            //            Image(systemName: "hourglass.bottomhalf.filled")
            NavigationLink(destination: Alt_TableOfContentsView()) {
                TestImageView()
                    .ignoresSafeArea(.all)
                    .font(.system(size: 64))
                    .rotationEffect(.degrees(isRotating))
                    .onAppear {
                        withAnimation(.linear(duration: 1)
                            .speed(0.1).repeatForever(autoreverses: false)) {
                                isRotating = 360.0
                            }
                    }
            }// End of Nav. Link
            .background(.black)
        }//End of VStack
    }
}

struct RotatingTableOfContentsView_Previews: PreviewProvider {
    static var previews: some View {
        RotatingTableOfContentsView()
    }
}


struct IconButtonTOC: ButtonStyle {
    let systemImageName: String
    
    func makeBody (configuration: Configuration) -> some View {
        Image (systemName: systemImageName)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .foregroundColor(.white)//changes icon color
//            .frame(width: 33, height: 33)
            .padding()
            .background(Color .clear)
            //.clipShape(Circle())
    }
}


//Rotating Animated SF Symbol
//https://cindori.com/developer/swiftui-animation-rotation
