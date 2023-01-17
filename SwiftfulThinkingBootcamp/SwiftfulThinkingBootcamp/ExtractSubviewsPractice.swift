//
//  ExtractSubviewsPractice.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Rifqi Muhammad Aziz on 17/01/23.
//

import SwiftUI

struct ExtractSubviewsPractice: View {
    var body: some View {
        ZStack {
            Color(.green).ignoresSafeArea()
            
            contentLayer
        }
    }
    
    var contentLayer: some View {
        VStack {
            MyItem(title: "Apples", count: 10, color: .red)
            MyItem(title: "Grapes", count: 100, color: .purple)
            MyItem(title: "Bananas", count: 20, color: .yellow)
            MyItem(title: "Oranges", count: 38, color: .orange)
        }
    }
    
}

struct ExtractSubviewsPractice_Previews: PreviewProvider {
    static var previews: some View {
        ExtractSubviewsPractice()
    }
}

struct MyItem: View {
    
    let title: String
    let count: Int
    let color: Color
    
    var body: some View {
        VStack {
            Text("\(count)")
            Text("\(title)")
        }
        .padding()
        .background(color)
        .cornerRadius(10)
    }
}
