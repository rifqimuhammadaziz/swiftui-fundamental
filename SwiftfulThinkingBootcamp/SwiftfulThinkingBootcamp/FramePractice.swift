//
//  FramePractice.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Rifqi Muhammad Aziz on 26/12/22.
//

import SwiftUI

struct FramePractice: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/).background(Color.red)
            .frame(height: 100).background(Color.orange)
            .frame(width: 150).background(Color.purple)
            .frame(maxWidth: .infinity).background(Color.pink)
            .frame(height: 400).background(Color.green)
            .frame(maxHeight: .infinity, alignment: .top).background(Color.yellow)
    }
}

struct FramePractice_Previews: PreviewProvider {
    static var previews: some View {
        FramePractice()
    }
}
