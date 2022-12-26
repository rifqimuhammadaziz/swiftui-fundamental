//
//  GradientsPractice.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Rifqi Muhammad Aziz on 26/12/22.
//

import SwiftUI

struct GradientsPractice: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25.0)
            .fill(
//                Color.blue
//                LinearGradient(
//                    gradient: Gradient(colors: [Color.blue, Color.cyan]),
//                    startPoint: .topLeading,
//                    endPoint: .bottomTrailing)
//                RadialGradient(
//                    gradient: Gradient(colors: [Color.green, Color.red]),
//                    center: .top,
//                    startRadius: 5,
//                    endRadius: 400)
                AngularGradient(
                    gradient: Gradient(colors: [Color.red, Color.blue]),
                    center: .topLeading,
                    angle: .degrees(45))
            )
            .frame(width: 300, height: 200)
            .shadow(radius: 10)
    }
}

struct GradientsPractice_Previews: PreviewProvider {
    static var previews: some View {
        GradientsPractice()
    }
}
