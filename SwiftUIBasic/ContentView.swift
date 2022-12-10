//
//  ContentView.swift
//  SwiftUIBasic
//
//  Created by Rifqi Muhammad Aziz on 10/12/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Image(systemName: "hand.raised")
            .resizable()
            .frame(width: 100, height: 100)
            .background(Color("MyCustomColor"))
            .foregroundColor(Color.white)
            .padding()
            .background(Color("MyCustomColor"))
            .cornerRadius(20)
        
//        Text("Hello, Rifqi Muhammad. How Are You?")
//            .foregroundColor(Color.white)
//            .background(Color.black)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
