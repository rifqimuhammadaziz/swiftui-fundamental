//
//  ImagesPractice.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Rifqi Muhammad Aziz on 26/12/22.
//

import SwiftUI

struct ImagesPractice: View {
    var body: some View {
        Image("google")
//            .renderingMode(.template) // transform png to template for changing color
            .resizable()
            .foregroundColor(.green)
//            .aspectRatio(contentMode: .fit)
            .scaledToFit()
            .frame(width: 200, height: 200)
//            .clipShape(Circle())
    }
}

struct ImagesPractice_Previews: PreviewProvider {
    static var previews: some View {
        ImagesPractice()
    }
}
