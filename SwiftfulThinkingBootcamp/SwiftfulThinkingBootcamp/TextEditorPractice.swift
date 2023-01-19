//
//  TextEditorPractice.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Rifqi Muhammad Aziz on 19/01/23.
//

import SwiftUI

struct TextEditorPractice: View {
    
    @State var textEditorText: String = "This is the text editor"
    @State var savedText: String = ""
    
    var body: some View {
        NavigationView {
            VStack {
                TextEditor(text: $textEditorText)
                    .frame(height: 250)
                    .colorMultiply(.gray.opacity(0.8))
                    .cornerRadius(10)
                
                Button(action: {
                    savedText = textEditorText
                }, label: {
                    Text("Save".uppercased())
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(.blue)
                        .cornerRadius(10)
                        
                })
                Text(savedText)
                
                Spacer()
            }
            .padding()
            .background(.green)
            .navigationTitle("Text Editor")
        }
    }
}

struct TextEditorPractice_Previews: PreviewProvider {
    static var previews: some View {
        TextEditorPractice()
    }
}
