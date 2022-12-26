//
//  IconsPractice.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Rifqi Muhammad Aziz on 26/12/22.
//

import SwiftUI

struct IconsPractice: View {
    var body: some View {
        Image(systemName: "gamecontroller.fill")
            .font(.largeTitle)
//            .resizable()
//            .scaledToFill()
//            .aspectRatio(contentMode: .fit)
            .foregroundColor(.cyan)
//            .frame(width: 300, height: 300)
//            .clipped()
    }
}

struct IconsPractice_Previews: PreviewProvider {
    static var previews: some View {
        IconsPractice()
    }
}
