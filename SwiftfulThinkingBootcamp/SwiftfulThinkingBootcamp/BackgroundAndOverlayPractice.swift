//
//  BackgroundAndOverlayPractice.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Rifqi Muhammad Aziz on 26/12/22.
//

import SwiftUI

struct BackgroundAndOverlayPractice: View {
    var body: some View {
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//            .frame(width: 120, height: 120, alignment: .center)
//            .background(
//                Circle()
//                    .fill(Color.red)
//                    .frame(width: 120, height: 120, alignment: .center)
//            )
//        Circle()
//            .fill(Color.blue)
//            .frame(width: 100, height: 100, alignment: .center)
//            .overlay(
//                Text("1")
//                    .font(.largeTitle)
//                    .foregroundColor(.white))
//            .background(
//                Circle()
//                    .fill(Color.red)
//                    .frame(width: 110, height: 110))
//        Rectangle()
//            .frame(width: 100, height: 100)
//            .overlay(
//                Rectangle()
//                    .fill(Color.blue)
//                    .frame(width: 50, height: 50), alignment: .topLeading)
//            .background(
//                Rectangle()
//                    .fill(Color.red)
//                    .frame(width: 150, height: 150), alignment: .bottomTrailing)
        Image(systemName: "heart.fill")
            .font(.system(size: 40))
            .foregroundColor(Color.white)
            .background(
                Circle() // outer cirle for heart image
                    .fill(
                        LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: .leading, endPoint: .trailing)
                    )
                    .frame(width: 100, height: 100)
                    .shadow(color: Color.blue, radius: 10)
                    .overlay(
                        Circle() // outer circle for text
                            .fill(Color.blue)
                            .frame(width: 35, height: 35)
                            .overlay(
                                Text("5")
                                    .font(.headline)
                                    .foregroundColor(.white)
                            )
                            .shadow(radius: 10),
                        alignment: .bottomTrailing
                    )
            )
    }
}

struct BackgroundAndOverlayPractice_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundAndOverlayPractice()
    }
}
