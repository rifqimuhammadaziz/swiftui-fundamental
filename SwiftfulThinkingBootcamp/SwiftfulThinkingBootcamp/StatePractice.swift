//
//  StatePractice.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Rifqi Muhammad Aziz on 14/01/23.
//

import SwiftUI

struct StatePractice: View {
    
    @State var backgroundColor: Color = Color.green
    @State var myTitle: String = "This is the Title"
    @State var count: Int = 0
    
    var body: some View {
        ZStack {
            // Background
            backgroundColor
                .edgesIgnoringSafeArea(.all)
            
            // Content
            VStack(spacing: 20) {
                Text(myTitle)
                    .font(.title)
                Text("Count: \(count)")
                    .font(.headline)
                    .underline()
                
                HStack(spacing: 20) {
                    Button("Button 1".uppercased()) {
                        backgroundColor = .blue
                        myTitle = "Button 1 is works!"
                        count += 1
                    }
                    
                    Button("Button 2".uppercased()) {
                        backgroundColor = .red
                        myTitle = "Button 2 is works!"
                        count += 1
                    }
                }
                
                Button(action: {
                    count = 0
                }, label: {
                    Text("Reset Count")
                        .foregroundColor(.white)
                        .padding()
                        .background(
                            Color.red
                                .cornerRadius(20)
                                .shadow(radius: 10)
                        )
                })
            }
            .foregroundColor(.white)
        }
    }
}

struct StatePractice_Previews: PreviewProvider {
    static var previews: some View {
        StatePractice()
    }
}
