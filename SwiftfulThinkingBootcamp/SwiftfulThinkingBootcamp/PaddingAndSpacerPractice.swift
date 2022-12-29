//
//  PaddingAndSpacerPractice.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Rifqi Muhammad Aziz on 29/12/22.
//

import SwiftUI

struct PaddingAndSpacerPractice: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Hello, Rifqi!")
    //            .padding()
//                .padding(.horizontal, 20) // add padding to left & right side
                .font(.largeTitle)
                .fontWeight(.semibold)
                .padding(.bottom, 20)
            
//            Text("Hello, Rifqi!")
//                .font(.largeTitle)
//                .fontWeight(.semibold)
//                .frame(maxWidth: .infinity, alignment: .leading) // width is max screen
//                .background(.blue)
//                .padding(.leading, 50)
            
            Text("This is description of what we will do on this screen. It is multiple lines and we will align the text to the leading edge.")
//                .multilineTextAlignment(.leading)
            
        }
        .padding()
        .padding(.vertical, 10)
        .background(
            Color.white
                .cornerRadius(10)
                .shadow(color: .black.opacity(0.3), radius: 10, x: 0, y: 10)
        )
        .padding(.horizontal, 10) // add padding to left & right side
        
        
    }
}

struct PaddingAndSpacerPractice_Previews: PreviewProvider {
    static var previews: some View {
        PaddingAndSpacerPractice()
    }
}
