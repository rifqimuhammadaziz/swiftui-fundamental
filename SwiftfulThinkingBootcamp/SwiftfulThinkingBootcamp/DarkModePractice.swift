//
//  DarkModePractice.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Rifqi Muhammad Aziz on 21/01/23.
//

import SwiftUI

struct DarkModePractice: View {
    
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 20) {
                    // will be affected in light/dark mode
                    Text("Hello Xenosty! This is Primary Text")
                        .foregroundColor(.primary)
                    Text("Hello Xenosty! This is Secondary Text")
                        .foregroundColor(.secondary)
                    
                    // general color scheme
                    Text("Hello Xenosty! This is Black Text")
                        .foregroundColor(.black)
                    Text("Hello Xenosty! This is White Text")
                        .foregroundColor(.white)
                    Text("Hello Xenosty! This is Red Color")
                        .foregroundColor(.red)
                    
                    // assets color
                    Text("This is Globally Adaptive Color")
                        .foregroundColor(Color("AdaptiveColor"))
                    
                    // color scheme conditional
                    Text("This is Locally Adaptive Color")
                        .foregroundColor(colorScheme == .light ? .green : .yellow)
                }
            }
            .navigationTitle("Dark Mode Adaption")
        }
    }
}

struct DarkModePractice_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            DarkModePractice()
                .preferredColorScheme(.light)
            DarkModePractice()
                .preferredColorScheme(.dark)
        }
    }
}
