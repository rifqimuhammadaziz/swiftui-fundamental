//
//  ExtractedFunctionPractice.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Rifqi Muhammad Aziz on 14/01/23.
//

import SwiftUI

struct ExtractedFunctionPractice: View {
    
    @State var backgroundColor: Color = Color.green
    
    var body: some View {
        ZStack {
            // Background
            backgroundColor.ignoresSafeArea()
            
            // Content
            contentLayer
        }
    }
    
    // Variable for content
    var contentLayer: some View {
        VStack {
            Text("This is the Title")
                .font(.largeTitle)
            
            Button(action: {
                buttonPressed()
            }, label: {
                Text("Press Me".uppercased())
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .background(.blue)
                    .cornerRadius(10)
                    .shadow(radius: 10)
            })
        }
    }
    
    func buttonPressed() {
        backgroundColor = .yellow
    }
}

struct ExtractedFunctionPractice_Previews: PreviewProvider {
    static var previews: some View {
        ExtractedFunctionPractice()
    }
}
