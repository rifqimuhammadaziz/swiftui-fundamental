//
//  AnimationTimingPractice.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Rifqi Muhammad Aziz on 18/01/23.
//

import SwiftUI

struct AnimationTimingPractice: View {
    
    @State var isAnimating: Bool = false
    let timing: Double = 10.0
    
    var body: some View {
        VStack {
            Button("Animate: \(isAnimating.description)") {
                isAnimating.toggle()
            }
            
            RoundedRectangle(cornerRadius: 20)
                .frame(
                    width: isAnimating ? 350 : 50,
                    height: 100)
                .animation(.spring(
                    response: 1.0,
                    dampingFraction: 0.7,
                    blendDuration: 1.0))
//                .animation(Animation.linear(duration: timing))
            
//            RoundedRectangle(cornerRadius: 20)
//                .frame(
//                    width: isAnimating ? 350 : 50,
//                    height: 100)
//                .animation(Animation.easeIn(duration: timing))
//
//            RoundedRectangle(cornerRadius: 20)
//                .frame(
//                    width: isAnimating ? 350 : 50,
//                    height: 100)
//                .animation(Animation.easeInOut(duration: timing))
//
//            RoundedRectangle(cornerRadius: 20)
//                .frame(
//                    width: isAnimating ? 350 : 50,
//                    height: 100)
//                .animation(Animation.easeOut(duration: timing))
        }
    }
}

struct AnimationTimingPractice_Previews: PreviewProvider {
    static var previews: some View {
        AnimationTimingPractice()
    }
}
