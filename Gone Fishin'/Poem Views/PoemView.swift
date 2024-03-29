//
//  PoemView.swift
//  C3
//
//  Created by Cameron Warner on 12/7/22.
//

import SwiftUI
import Foundation
import Pages



struct PoemView: View {
    @State var index: Int = 0
    var body: some View {
        NavigationStack{
            VStack{
                HStack{
                    ModelPages(Poem.poem, currentPage: $index, navigationOrientation: .horizontal, transitionStyle: .scroll, bounce: true, wrap: true){
                        i, poems in PoemsView(poems: poems)
                    }
                }// End of HStack
                .edgesIgnoringSafeArea(.all)
            }// End of VStack
            .navigationTitle("Title or E.M. Douglass") //Milk & Honey Inspo, thanks Krissie
            .navigationBarTitleDisplayMode(.inline)
        }// End of Nav. Stack
    }
}
    
private struct PoemsView: View {
    var poems: Poem
    
    var body: some View {
        ZStack{
            Image(poems.backgroundImage)
                .resizable()
                .edgesIgnoringSafeArea(.all)
            VStack{
                HStack{
                    anotherTestVTextView()
                    Text(poems.poemText)
                        .multilineTextAlignment(.center)
                        .padding()
                       

                }//End of HStack
                .foregroundColor(.white)
                HStack{
                    TextFieldBottomSheetView()
                }//End of HStack
            }//End of VStack
            .navigationTitle("How To Fish")
            .navigationBarTitleDisplayMode(.inline)
            //        .toolbar {
            //            ToolbarItem(placement: .navigationBarTrailing) {
            //               ChapterView()
            //                }
            //            }// End of Toolbar
            } //End of ZStack
        
        }
    }


struct PoemView_Previews: PreviewProvider {
    static var previews: some View {
        PoemView()
    }
}


//Unwrap App for Multi-Line String

