//
//  NotesView.swift
//  C3
//
//  Created by Cameron Warner on 12/14/22.
//

import SwiftUI

struct NotesView: View {
    
    var body: some View {
        VStack(spacing: 20) {
            Text ("Area to Reflect")
            
            HStack(spacing: 16) {
                Button("") {
                   // isShowingIcon.toggle()
                        
                }
                .buttonStyle(IconButton(systemImageName: "mic"))
                .font(.title)
                .fontWeight(.semibold)
                
                Button("") {
                   // isShowingIcon.toggle()
                }
                .buttonStyle(IconButton(systemImageName: "bookmark"))
                .font(.title)
                .fontWeight(.semibold)
                
                Button("") {
                   // isShowingIcon.toggle()
                }
                .buttonStyle(IconButton(systemImageName: "pencil.tip"))
                .font(.title)
                .fontWeight(.semibold)
                
                Button("") {
                   // isShowingIcon.toggle()
                }
                .buttonStyle(IconButton(systemImageName: "textformat.size"))
                .font(.title)
                .fontWeight(.semibold)
            }
        }
    }
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





struct NotesView_Previews: PreviewProvider {
    static var previews: some View {
        NotesView()
    }
}



