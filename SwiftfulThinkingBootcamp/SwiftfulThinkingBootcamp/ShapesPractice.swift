//
//  ShapesPractice.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Rifqi Muhammad Aziz on 26/12/22.
//

import SwiftUI

struct ShapesPractice: View {
    var body: some View {
//        Circle()
//        Ellipse()
//        Capsule(style: .circular)
//        Rectangle()
        RoundedRectangle(cornerRadius: 50)
//            .fill(Color.green)
//            .foregroundColor(Color.red) // same with fill
//            .stroke()
//            .stroke(Color.red, lineWidth: 5)
//            .stroke(Color.blue, style: StrokeStyle(lineWidth: 3, lineCap: .round, dash: [30]))
            .trim(from: 0.5, to: 1.0)
//            .stroke(Color.purple, lineWidth: 50)
            .frame(width: 200, height: 100)
    }
}

struct ShapesPractice_Previews: PreviewProvider {
    static var previews: some View {
        ShapesPractice()
    }
}
