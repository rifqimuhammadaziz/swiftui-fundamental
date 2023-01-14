//
//  SafeAreaPractice.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Rifqi Muhammad Aziz on 14/01/23.
//

import SwiftUI

struct SafeAreaPractice: View {
    var body: some View {
//        ZStack {
//
//            // Background
//            Color.blue
//                .edgesIgnoringSafeArea(.all)
//
//
//            // Foreground
//            VStack {
//                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//                    .padding(.top, 20)
//                Spacer()
//            }
//            .frame(maxWidth: .infinity, maxHeight: .infinity)
//            .background(.red)
//        }
        
        ZStack {
            
//            Color.blue
//                .edgesIgnoringSafeArea(.all)
            
            ScrollView {
                Text("Title goes here")
                    .font(.largeTitle)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding()
                
                ForEach(0..<10) { index in
                    RoundedRectangle(cornerRadius: 25.0)
                        .fill(.white)
                        .frame(height: 150)
                        .shadow(radius: 10)
                        .padding(20)
                }
            }
            .background(Color.red.ignoresSafeArea(.all))
        }
    }
}

struct SafeAreaPractice_Previews: PreviewProvider {
    static var previews: some View {
        SafeAreaPractice()
    }
}
