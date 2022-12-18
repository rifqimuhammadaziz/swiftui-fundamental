//
//  ContentView.swift
//  DrawShape
//
//  Created by Rifqi Muhammad Aziz on 17/12/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
//        VStack {
//            Circle()
//                .overlay(Circle().stroke(Color.green, lineWidth: 5)) // Stroke
//                .foregroundColor(Color.red)
//
//            Rectangle()
//                .stroke(Color.red, lineWidth: 20)
//
//            RoundedRectangle(cornerRadius: 30, style: .circular)
//                .size(width: 80, height: 40)
//                .offset(x: 100, y:20)
//                .rotation(Angle(degrees: 30))
//                .trim(from: 0.1, to: 0.8)
//        }
//        .padding()
        
        VStack {
            Image("cat")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 200, height: 100)
                .clipShape(Ellipse().rotation(Angle(degrees: 30)))
                .overlay(Ellipse().rotation(Angle(degrees: 30)).stroke(Color.red, lineWidth: 5))
        }.padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
