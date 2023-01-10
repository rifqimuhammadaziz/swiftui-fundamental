//
//  ScrollViewPractice.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Rifqi Muhammad Aziz on 10/01/23.
//

import SwiftUI

struct ScrollViewPractice: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false, content: {
            VStack {
                ForEach(0..<10) { index in
//                    Rectangle()
//                        .fill(Color.green)
//                        .frame(width: 300, height: 300)
                    ScrollView(.horizontal, showsIndicators: false, content: {
                        HStack {
                            ForEach(0..<5) { index in
                                RoundedRectangle(cornerRadius: 25.0)
                                    .fill(Color.green)
                                    .frame(width: 250, height: 250)
                                    .shadow(radius: 5)
                                    .padding()
                            }
                        }
                    })
                    
                }
            }
        })
    }
}

struct ScrollViewPractice_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViewPractice()
    }
}
