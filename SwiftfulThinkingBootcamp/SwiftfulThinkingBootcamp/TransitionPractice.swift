//
//  TransitionPractice.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Rifqi Muhammad Aziz on 18/01/23.
//

import SwiftUI

struct TransitionPractice: View {
    
    @State var showView: Bool = false
    
    var body: some View {
        ZStack(alignment: .bottom) {
            VStack {
                Button("Button") {
                    showView.toggle()
                }
                
                Spacer()
            }
            
            if showView {
                RoundedRectangle(cornerRadius: 30)
                    .frame(height: UIScreen.main.bounds.height * 0.5)
                    .shadow(radius: 10)
                    .transition(.asymmetric(
                        insertion: .move(edge: .bottom),
                        removal: AnyTransition.opacity.animation(.easeInOut)))
                    .animation(.easeInOut)
            }
        }
        .edgesIgnoringSafeArea(.bottom)
    }
}

struct TransitionPractice_Previews: PreviewProvider {
    static var previews: some View {
        TransitionPractice()
    }
}
