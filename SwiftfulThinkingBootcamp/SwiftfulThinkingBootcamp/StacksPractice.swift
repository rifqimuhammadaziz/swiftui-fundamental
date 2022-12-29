//
//  StacksPractice.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Rifqi Muhammad Aziz on 29/12/22.
//

import SwiftUI

struct StacksPractice: View {
    
    // VStack -> Vertical
    // HStack -> Horizontal
    // ZStack -> ZIndex (Back to Front)
    
    var body: some View {
//        VStack {
//            Rectangle()
//                .fill(Color.red)
//                .frame(width: 200, height: 200)
//            Rectangle()
//                .fill(Color.green)
//                .frame(width: 180, height: 180)
//            Rectangle()
//                .fill(Color.blue)
//                .frame(width: 160, height: 160)
//            Rectangle()
//                .fill(Color.orange)
//                .frame(width: 140, height: 140)
//        }
        
//        ZStack {
//            Rectangle()
//                .fill(Color.blue)
//                .frame(width: 350, height: 500)
//
//            VStack {
//                Rectangle()
//                    .fill(Color.green)
//                    .frame(width: 150, height: 150)
//                Rectangle()
//                    .fill(Color.green)
//                    .frame(width: 100, height: 100)
//                HStack {
//                    Rectangle()
//                        .fill(Color.red)
//                    .frame(width: 50, height: 50)
//                    Rectangle()
//                        .fill(Color.red)
//                    .frame(width: 50, height: 50)
//                }
//
//                ZStack {
//                    Rectangle()
//                        .fill(Color.white)
//                        .frame(width: 100, height: 100)
//                    Rectangle()
//                        .fill(Color.black)
//                    .frame(width: 50, height: 50)
//                }
//            }
//        }
//        VStack(alignment: .leading, spacing: 20) {
//            Text("Items in cart: ")
//                .font(.caption)
//            Text("5")
//                .font(.largeTitle)
//        }
        VStack(spacing: 50) {
            ZStack {
                Circle()
                    .frame(width: 100, height: 100)
                Text("1")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
            }
            
            Text("2")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(.white)
                .background(
                    Circle()
                        .frame(width: 100, height: 100)
                )
        }
    }
}

struct StacksPractice_Previews: PreviewProvider {
    static var previews: some View {
        StacksPractice()
    }
}
