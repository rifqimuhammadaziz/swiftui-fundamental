//
//  ListPractice.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Rifqi Muhammad Aziz on 18/01/23.
//

import SwiftUI

struct ListPractice: View {
    
    @State var fruits: [String] = [
        "Apple", "Grape", "Orange", "Durian", "Banana"
    ]
    @State var veggies: [String] = [
        "Potato", "Tomato", "Carrot", "Brocoli"
    ]
    
    var body: some View {
        NavigationView {
            List {
                Section(
                    header:
                        HStack {
                            Text("Fruits")
                            Image(systemName: "flame.fill")
                        }
                        .font(.headline)
                        .foregroundColor(.orange),
                    content: {
                        ForEach(fruits, id: \.self) { fruit in
                            Text(fruit.capitalized)
                                .font(.caption)
                                .foregroundColor(.white)
//                                .frame(maxWidth: .infinity, maxHeight: .infinity)
//                                .background(Color.green)
                                .padding(.vertical)
                        }
                        .onDelete(perform: deleteItem)
                        .onMove(perform: moveItem)
                        .listRowBackground(Color.green)
                    })
                
                Section(
                    header:
                        HStack {
                            Text("Fruits")
                            Image(systemName: "flame.fill")
                        }
                        .font(.headline)
                        .foregroundColor(.orange),
                    content: {
                        ForEach(veggies, id: \.self) { veggy in
                            Text(veggy.capitalized)
                        }
                    })
            }
//            .listStyle(SidebarListStyle()) // dropdown list group
            .navigationTitle("Grocery List")
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    EditButton()
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    AddButton
                }
            }
        }
        
    }
    
    var AddButton: some View {
        Button("Add", action: {
            addItem(item: "Strawberry")
        })
    }
    
    func deleteItem(indexSet: IndexSet) {
        fruits.remove(atOffsets: indexSet)
    }
    
    func moveItem(indices: IndexSet, newOffset: Int) {
        fruits.move(fromOffsets: indices, toOffset: newOffset)
    }
    
    func addItem(item: String) {
        fruits.append(item)
    }
}

struct ListPractice_Previews: PreviewProvider {
    static var previews: some View {
        ListPractice()
    }
}
