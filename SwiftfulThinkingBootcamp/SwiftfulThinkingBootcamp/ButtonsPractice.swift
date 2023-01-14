//
//  ButtonsPractice.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Rifqi Muhammad Aziz on 14/01/23.
//

import SwiftUI

struct ButtonsPractice: View {
    
    @State var title: String = "This is the Title"
    
    var body: some View {
        VStack(spacing: 20) {
            Text(title)
            
            Button("First Button") {
                self.title = "First #1 Button is Works!"
            }
            .tint(.green)
            
            Button(action: {
                self.title = "Second #2 Button is Works"
            }, label: {
                Text("Second Button".uppercased())
                    .font(.headline)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .padding()
                    .padding(.horizontal, 20)
                    .background(
                        Color.blue
                            .cornerRadius(10)
                            .shadow(radius: 10)
                    )
            })
            
            Button(action: {
                self.title = "Third #3 Button is Works"
            }, label: {
                Circle()
                    .fill(.white)
                    .frame(width: 75, height: 75)
                    .shadow(radius: 10)
                    .overlay(
                        Image(systemName: "heart.fill")
                            .font(.largeTitle)
                            .foregroundColor(Color.red)
                    )
            })
            
            Button(action: {
                
            }, label: {
                Text("Finish Task".uppercased())
                    .font(.caption)
                    .bold()
                    .foregroundColor(.gray)
                    .padding()
                    .padding(.horizontal, 10)
                    .background(
                        Capsule()
                            .stroke(Color.gray, lineWidth: 2.0)
                    )
            })
        }
    }
}

struct ButtonsPractice_Previews: PreviewProvider {
    static var previews: some View {
        ButtonsPractice()
    }
}
