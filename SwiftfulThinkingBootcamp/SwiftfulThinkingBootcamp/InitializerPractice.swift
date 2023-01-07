//
//  InitializerPractice.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Rifqi Muhammad Aziz on 29/12/22.
//

import SwiftUI

struct InitializerPractice: View {
    
    let backgroundColor: Color
    let count: Int
    let title: String
    
    init(count: Int, fruit: Fruit) {
        self.count = count
//        self.title = title
//
//        if title == "Apples" {
//            self.backgroundColor = Color.red
//        } else {
//            self.backgroundColor = Color.blue
//        }
        if fruit == .apple {
            self.title = "Apples"
            self.backgroundColor = Color.red
        } else {
            self.title = "Orange"
            self.backgroundColor = Color.orange
        }
    }
    
    enum Fruit {
        case apple
        case orange
    }
    
    var body: some View {
        VStack(spacing: 12) {
            Text("\(count)")
                .font(.largeTitle)
                .underline()
            
            Text(title)
                .font(.headline)
        }
        .foregroundColor(Color.white)
        .frame(width: 150, height: 150)
        .background(backgroundColor)
        .cornerRadius(10)
    }
}

struct InitializerPractice_Previews: PreviewProvider {
    static var previews: some View {
        HStack {
            InitializerPractice(count: 20, fruit: .apple)
            InitializerPractice(count: 100, fruit: .orange)
        }
    }
}
