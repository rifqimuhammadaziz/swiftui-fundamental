//
//  NavigationViewPractice.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Rifqi Muhammad Aziz on 18/01/23.
//

import SwiftUI

struct NavigationViewPractice: View {
    var body: some View {
        NavigationView {
            ScrollView {
                NavigationLink("Open Other Screen", destination: MyOtherScreen())
                
                Text("Hello Xenosty!")
                Text("Hello Xenosty!")
                Text("Hello Xenosty!")
            }
            .navigationTitle("All Inboxes")
            .navigationBarTitleDisplayMode(.automatic)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    HStack {
                        Image(systemName: "person.fill")
                        Image(systemName: "flame.fill")
                    }
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    NavigationLink(
                        destination: MyOtherScreen(),
                        label: {
                            Image(systemName: "gear")
                    })
                    .tint(.red)
                }
            }
//            .toolbar(.hidden)
        }
    }
}

struct MyOtherScreen: View {
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ZStack {
            Color.green.ignoresSafeArea()
                .navigationTitle("Green Screen")
                .toolbar(.hidden) // hide back button
            
            VStack {
                Button("Back Button") {
                    dismiss()
                }
                
                NavigationLink("Open Third Screen", destination: Text("Third Screen"))
            }
        }
    }
}

struct NavigationViewPractice_Previews: PreviewProvider {
    static var previews: some View {
        NavigationViewPractice()
    }
}
