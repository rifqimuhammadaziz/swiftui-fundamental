//
//  TernaryOperatorPractice.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Rifqi Muhammad Aziz on 18/01/23.
//

import SwiftUI

struct TernaryOperatorPractice: View {
    
    @State var isStartingState: Bool = false
    
    var body: some View {
        VStack {
            Button("Starting State: \(isStartingState.description)") {
                isStartingState.toggle()
            }
            
//            if isStartingState {
//                RoundedRectangle(cornerRadius: 25)
//                    .fill(.red)
//                    .frame(width: 200, height: 100)
//            } else {
//                RoundedRectangle(cornerRadius: 25)
//                    .fill(.blue)
//                    .frame(width: 200, height: 100)
//            }
            
            Text(isStartingState ? "START STATE" : "END STATE")
            
            RoundedRectangle(cornerRadius: isStartingState ? 25 : 0)
                .fill(isStartingState ? Color.red : Color.blue) // true is red, false is blue
                .frame(
                    width: isStartingState ? 200 : 50,
                    height: isStartingState ? 400 : 200
                )
            
            Spacer()
        }
    }
}

struct TernaryOperatorPractice_Previews: PreviewProvider {
    static var previews: some View {
        TernaryOperatorPractice()
    }
}
