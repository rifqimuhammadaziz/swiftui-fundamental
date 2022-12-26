//
//  ColorsPractice.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Rifqi Muhammad Aziz on 26/12/22.
//

import SwiftUI

struct ColorsPractice: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25.0)
            .fill(
//                Color.primary // will be affected in dark/light mode
                Color("CustomColor")
            )
            .frame(width: 300, height: 200)
//            .shadow(radius: 10)
            .shadow(color: Color("CustomColor").opacity(0.3),
                    radius: 10, x: 0, y: -20)
        
    }
}

struct ColorsPractice_Previews: PreviewProvider {
    static var previews: some View {
        ColorsPractice()
    }
}
