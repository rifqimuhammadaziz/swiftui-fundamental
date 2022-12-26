//
//  TextPractice.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Rifqi Muhammad Aziz on 26/12/22.
//

import SwiftUI

struct TextPractice: View {
    var body: some View {
        Text("Hello, guys. This is the Swift Practice by Rifqi Muhammad Aziz from tutorial in Youtube.".capitalized)
//            .font(.title)
            .fontWeight(.medium)
//            .underline(true, color: Color.green)
//            .italic()
//            .strikethrough(true, color: Color.red)
//            .font(.system(size: 24, weight: .semibold, design: .serif))
//            .baselineOffset(20.0) // line spacing
//            .kerning(2.0) // text spacing
            .multilineTextAlignment(.center)
            .foregroundColor(.blue) // text color
            .frame(width: 150, height: 100, alignment: .center) // frame of text
            .minimumScaleFactor(0.1) // scaling font size to frame
    }
}

struct TextPractice_Previews: PreviewProvider {
    static var previews: some View {
        TextPractice()
    }
}
