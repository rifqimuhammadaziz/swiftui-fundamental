//
//  SubmitTextFieldPractice.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Rifqi Muhammad Aziz on 26/01/23.
//

import SwiftUI

struct SubmitTextFieldPractice: View {
    
    @State private var text: String = ""
    
    var body: some View {
        TextField("Placeholder", text: $text)
            .submitLabel(.route) // change submit button to 'route'
            .onSubmit { // press enter
                print("Textfield is works")
            }
    }
}

struct SubmitTextFieldPractice_Previews: PreviewProvider {
    static var previews: some View {
        SubmitTextFieldPractice()
    }
}
