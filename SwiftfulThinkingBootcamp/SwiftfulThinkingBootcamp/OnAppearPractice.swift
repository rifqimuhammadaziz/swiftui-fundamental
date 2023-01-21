//
//  OnAppearPractice.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Rifqi Muhammad Aziz on 21/01/23.
//

import SwiftUI

struct OnAppearPractice: View {
    
    @State var myText: String = "Starting Text."
    @State var count: Int = 0
    
    var body: some View {
        NavigationStack {
            ScrollView {
                Text(myText)
                LazyVStack {
                    ForEach(0..<50) { _ in
                        RoundedRectangle(cornerRadius: 25.0)
                            .frame(height: 200)
                            .padding()
                            .onAppear {
                                count += 1
                            }
                    }
                }
            }
            .onAppear(perform: { // change text after 5 second
                DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
                    myText = "This is new text!"
                }
            })
            .onDisappear(perform: {
                myText = "Ending Text."
            })
            .navigationTitle("On Appear: \(count)")
        }
    }
}

struct OnAppearPractice_Previews: PreviewProvider {
    static var previews: some View {
        OnAppearPractice()
    }
}
