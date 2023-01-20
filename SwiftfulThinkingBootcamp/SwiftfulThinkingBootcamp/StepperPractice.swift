//
//  StepperPractice.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Rifqi Muhammad Aziz on 20/01/23.
//

import SwiftUI

struct StepperPractice: View {
    
    @State var stepperValue: Int = 10
    @State var widthIncrement: CGFloat = 0
    
    var body: some View {
        VStack {
            Stepper("First Stepper: \(stepperValue)", value: $stepperValue)
                .font(.headline)
                .foregroundColor(.white)
                .padding(20)
                .background(.cyan)
                .cornerRadius(20)
                .padding()
            
            RoundedRectangle(cornerRadius: 25)
                .frame(width: 100 + widthIncrement, height: 100)
            
            Stepper("Second Stepper") {
                // increment
                incrementWidth(amount: 100)
            } onDecrement: {
                // decrement
                incrementWidth(amount: -100)
            }
            .font(.headline)
            .foregroundColor(.white)
            .padding(20)
            .background(.cyan)
            .cornerRadius(20)
            .padding()        }
    }
    
    func incrementWidth(amount: CGFloat) {
        withAnimation(.easeInOut) {
            widthIncrement += amount
        }
    }
}

struct StepperPractice_Previews: PreviewProvider {
    static var previews: some View {
        StepperPractice()
    }
}
