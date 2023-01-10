//
//  ForEachPractice.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Rifqi Muhammad Aziz on 07/01/23.
//

import SwiftUI

struct ForEachPractice: View {
    
    let data: [String] = ["Hi", "Hello", "Hey"]
    let myString: String = "Halo"
    
    var body: some View {
        VStack {
//            ForEach(0..<10) { index in
//                Text("Hi, \(index)")
//                HStack {
//                    Circle()
//                        .frame(width: 10, height: 10)
//                    Text("Index: \(index)")
//                }
//            }
            ForEach(data.indices) { index in
                Text("Index \(index) : \(data[index])")
            }
        }
    }
}

struct ForEachPractice_Previews: PreviewProvider {
    static var previews: some View {
        ForEachPractice()
    }
}
