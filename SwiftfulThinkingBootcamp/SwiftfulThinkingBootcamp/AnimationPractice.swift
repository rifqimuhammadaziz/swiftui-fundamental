//
//  AnimationPractice.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Rifqi Muhammad Aziz on 18/01/23.
//

import SwiftUI

struct AnimationPractice: View {
    
    @State var isAnimated: Bool = false
    
    var body: some View {
        VStack {
            Button("Animate") {
                withAnimation(
                    Animation
                        .default
                        .delay(1.0)
//                        .repeatCount(5, autoreverses: true)
                        .repeatForever(autoreverses: true)) {
                    isAnimated.toggle()
                }
            }
            
            Spacer()
            
            RoundedRectangle(cornerRadius: isAnimated ? 80 : 25)
                .fill(isAnimated ? Color.green : Color.red)
                .frame(
                    width: isAnimated ? 100 : 300,
                    height: isAnimated ? 100 : 300)
                .rotationEffect(Angle(degrees: isAnimated ? 360 : 0))
                .offset(y: isAnimated ? 300 : 0)
//                .animation(Animation.default.repeatForever(autoreverses: true))
            
            Spacer()
        }
    }
}

struct AnimationPractice_Previews: PreviewProvider {
    static var previews: some View {
        AnimationPractice()
    }
}
