//
//  TextSelectionPractice.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Rifqi Muhammad Aziz on 25/01/23.
//

import SwiftUI

struct TextSelectionPractice: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .textSelection(.enabled) // hold click on text to copy-share
        
    }
}

struct TextSelectionPractice_Previews: PreviewProvider {
    static var previews: some View {
        TextSelectionPractice()
    }
}
