//
//  ContentView.swift
//  GetJSON
//
//  Created by Rifqi Muhammad Aziz on 21/12/22.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var fetch = APIService()
    
    var body: some View {
        VStack {
            Text("GET Mapping")
                .font(.system(size: 24, weight: .bold, design: .rounded))
            Text("GET Mapping")
                .font(.system(size: 16, weight: .light, design: .rounded))
        }
        
        List(fetch.post) { post in
            VStack {
                Text(post.title)
                    .font(.system(size: 24, weight: .bold, design: .rounded))
                Text(post.body)
                    .font(.system(size: 16, weight: .light, design: .rounded))
                Button(action: {print("Post with id: \(post.id)")}) {
                    Text("Get ID")
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
