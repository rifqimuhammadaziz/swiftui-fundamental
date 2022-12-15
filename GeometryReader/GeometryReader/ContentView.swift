//
//  ContentView.swift
//  GeometryReader
//
//  Created by Rifqi Muhammad Aziz on 15/12/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
//        GeometryReader {
//            geo in
//            HStack {
//                Text("Hello, Rifqi")
//                    .frame(width: geo.size.width/3, height: geo.size.height/2)
//                    .background(Color.red)
//                Text("Hello, Rifqi")
//                    .frame(width: geo.size.width/2, height: geo.size.height/2)
//                    .background(Color.orange)
//            }
//        }
        NavigationView {
            VStack {
                Column(pict1: "cat", pict2: "lion", pict3: "girrafe")
                Column(pict1: "content1", pict2: "content2", pict3: "content3")
                Text("Gallery")
            }
            .navigationBarTitle("Nature Album")
        }
        .navigationViewStyle(StackNavigationViewStyle()) // Landscape handler
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Column : View {
    var pict1, pict2, pict3 : String
    
    var body: some View {
        GeometryReader {
            geo in
            HStack {
                Image(self.pict1)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: geo.size.width/3, height: geo.size.height)
                    .clipped()
                Image(self.pict2)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: geo.size.width/3, height: geo.size.height)
                    .clipped()
                Image(self.pict3)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: geo.size.width/3, height: geo.size.height)
                    .clipped()
            }
        }
    }
}
