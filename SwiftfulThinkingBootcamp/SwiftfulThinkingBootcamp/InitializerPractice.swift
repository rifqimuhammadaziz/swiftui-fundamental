//
//  InitializerPractice.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Rifqi Muhammad Aziz on 29/12/22.
//

import SwiftUI

struct InitializerPractice: View {
    
    let backgroundColor: Color = Color.blue
    
    var body: some View {
        VStack(spacing: 12) {
            Text("5")
                .font(.largeTitle)
                .underline()
            
            Text("Mangos")
                .font(.headline)
        }
        .foregroundColor(Color.white)
        .frame(width: 150, height: 150)
        .background(backgroundColor)
        .cornerRadius(10)
    }
}

struct InitializerPractice_Previews: PreviewProvider {
    static var previews: some View {
        InitializerPractice()
    }
}
