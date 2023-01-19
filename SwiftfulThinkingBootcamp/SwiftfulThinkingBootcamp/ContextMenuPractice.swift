//
//  ContextMenuPractice.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Rifqi Muhammad Aziz on 19/01/23.
//

import SwiftUI

struct ContextMenuPractice: View {
    
    @State var backgroundColor: Color = Color.blue
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10.0) {
            Image(systemName: "house.fill")
                .font(.title)
            Text("Xenostech")
                .font(.headline)
            Text("SwiftUI to Use Context Menu")
                .font(.subheadline)
        }
        .foregroundColor(.white)
        .padding(20)
        .background(backgroundColor.cornerRadius(30))
        .contextMenu(menuItems: {
            Button(action: {
                backgroundColor = Color.yellow
            }, label: {
                Label("Share", systemImage: "paperplane.fill")
            })
            
            Button(action: {
                backgroundColor = Color.red
            }, label: {
                Label("Report", systemImage: "flame.fill")
            })
            
            Button(action: {
                backgroundColor = Color.green
            }, label: {
                HStack {
                    Text("Like")
                    Image(systemName: "heart.fill")
                }
            })
        })
    }
}

struct ContextMenuPractice_Previews: PreviewProvider {
    static var previews: some View {
        ContextMenuPractice()
    }
}
