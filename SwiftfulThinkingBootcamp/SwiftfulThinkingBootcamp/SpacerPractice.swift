//
//  SpacerPractice.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Rifqi Muhammad Aziz on 29/12/22.
//

import SwiftUI

struct SpacerPractice: View {
    var body: some View {
//        HStack(spacing: nil) {
//            Spacer() // add max spacing between item
//                .frame(height: 10)
//                .background(.red)
//
//            Rectangle()
//                .frame(width: 100, height: 100)
//
//            Spacer() // add max spacing between item
//                .frame(height: 10)
//                .background(.red)
//
//            Rectangle()
//                .fill(.green)
//                .frame(width: 100, height: 100)
//
//            Spacer() // add max spacing between item
//                .frame(height: 10)
//                .background(.red)
//        }
        
        VStack {
            HStack(spacing: 0) {
                Image(systemName: "xmark")
                
                Spacer()
                    .frame(height: 10)
//                    .background(Color.green)
                
                Image(systemName: "gear")
            }
            .font(.title)
//            .background(Color.yellow)
            .padding(.horizontal)
//            .background(Color.blue)
            
            Spacer()
                .frame(width: 10)
//                .background(Color.green)
            
            Rectangle()
                .frame(height: 75)
        }
//        .background(Color.yellow)
        
        
    }
}

struct SpacerPractice_Previews: PreviewProvider {
    static var previews: some View {
        SpacerPractice()
    }
}
