//
//  ListSwipeActionPractice.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Rifqi Muhammad Aziz on 25/01/23.
//

import SwiftUI

struct ListSwipeActionPractice: View {
    
    @State var fruits: [String] = [
        "Durian", "Mango", "Melon", "Apple", "Orange"
    ]
    
    var body: some View {
        List {
            ForEach(fruits, id: \.self) {
                Text($0.capitalized)
                    .swipeActions(edge: .trailing, allowsFullSwipe: true) {
                        Button("Archive") {
                            
                        }
                        .tint(.green)
                        Button("Save") {
                            
                        }
                        .tint(.blue)
                        Button("Trash") {
                            
                        }
                        .tint(.red)
                    }
                    .swipeActions(edge: .leading, allowsFullSwipe: true) {
                        Button("Share") {
                            
                        }
                        .tint(.yellow)
                    }
            }
//            .onDelete(perform: delete(indexSet: fruit)
        }
    }
    
    func delete(indexSet: IndexSet) {
        
    }
}

struct ListSwipeActionPractice_Previews: PreviewProvider {
    static var previews: some View {
        ListSwipeActionPractice()
    }
}
