//
//  GoneFishin'View.swift
//  C3
//
//  Created by Cameron Warner on 12/10/22.
//

import SwiftUI

struct GoneFishin_View: View {
    var string = "GONE FISHIN"
    @State private var stringArray = [String]()
    
    var body: some View {
    VStack{
        HStack{
            VStack {
                ForEach(stringArray, id: \.self) { i in
                    Text("\(i)\n")
                        .font(.title2)
                }
            }// End of VStack
            .onAppear
            {
                for i in string {
                    stringArray.append(String(i))
                }
            }//End of for in
            //                NavigationLink(destination: FirstCatchView()){
            Text("""
                         routinely naïve
                         it’s the definition of insanity
                         too careless to conceive
                         each vice manifested in vanity
                         
                         blinded by the forest for the trees
                         unaware of the lake from the seas
                         stir crazy; an idiomatic glass house
                         you can’t hide from yourself
                         """)
            .multilineTextAlignment(.center)
            .padding()
        }//End of HStack
        HStack{
            BottomSheetView()
                .padding()
            TextFieldBottomSheetView()
        }//End of HStack
    }//End of VStack
    .navigationBarBackButtonHidden(true)
//                }//End of Nav. Link
            }
        }
    

struct GoneFishin_View_Previews: PreviewProvider {
    static var previews: some View {
        GoneFishin_View()
    }
}

//Image Retrieved from 
//https://pixabay.com
