//
//  BindingPractice.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Rifqi Muhammad Aziz on 17/01/23.
//

import SwiftUI

// Parent View
struct BindingPractice: View {
    
    @State var backgroundColor: Color = Color.green
    @State var title: String = "Title"
    
    var body: some View {
        ZStack {
            backgroundColor.ignoresSafeArea()
            
            VStack {
                Text(title)
                    .foregroundColor(.white)
                    .font(.title)
                
                ButtonView(backgroundColor: $backgroundColor, title: $title)
            }
        }
    }
}

struct BindingPractice_Previews: PreviewProvider {
    static var previews: some View {
        BindingPractice()
    }
}

// Child View
struct ButtonView: View {
    
    @Binding var backgroundColor: Color
    @State var buttonColor: Color = Color.blue
    @Binding var title: String
    
    var body: some View {
        Button(action: {
            backgroundColor = Color.orange
            buttonColor = Color.red
            title = "Title is Changed by ButtonView"
        }, label: {
            Text("Button")
                .foregroundColor(.white)
                .padding()
                .padding(.horizontal)
                .background(buttonColor)
                .cornerRadius(10)
                .shadow(radius: 10)
            
        })
    }
}
