//
//  GoneFishin'View.swift
//  C3 renamed Gone Fishin' 
//
//  Created by Cameron Warner on 12/10/22.
//

import SwiftUI

struct GoneFishin_View: View {
    
    var body: some View {
        ZStack{
            GoneFishinBackgroundView()
            VStack{
                HStack{
                    GoneFishinVTextTitleView()
                        .padding(20)
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
                    .multilineTextAlignment(.leading)
                    .font(Font.custom("Bangla-Sangam-MN-Bold", size: 16))
                    .fontWeight(.semibold)
                    .padding(.top, 350)
                }//End of HStack
                .foregroundColor(.white)
                .padding()
            }//End of VStack
                }//End of ZStack
            }
        }
    

struct GoneFishin_View_Previews: PreviewProvider {
    static var previews: some View {
        GoneFishin_View()
            .environmentObject(LocalNotificationManager())

    }
}

//Image Retrieved from 
//https://pixabay.com
