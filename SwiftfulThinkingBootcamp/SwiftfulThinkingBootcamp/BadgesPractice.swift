//
//  BadgesPractice.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Rifqi Muhammad Aziz on 25/01/23.
//

import SwiftUI

// List
// TabView

struct BadgesPractice: View {
    var body: some View {
        VStack {
            List {
                Text("Hello, Xenosty")
                    .badge("New Item Released.")
                Text("Hello, Xenosty")
                Text("Hello, Xenosty")
                Text("Hello, Xenosty")
            }
            TabView {
                Color.red
                    .tabItem {
                        Image(systemName: "heart.fill")
                        Text("Hello")
                    }
                    .badge(5)

                Color.red
                    .tabItem {
                        Image(systemName: "heart.fill")
                        Text("Hello")
                    }

                Color.red
                    .tabItem {
                        Image(systemName: "heart.fill")
                        Text("Hello")
                    }
            }
        }
    }
}

struct BadgesPractice_Previews: PreviewProvider {
    static var previews: some View {
        BadgesPractice()
    }
}
