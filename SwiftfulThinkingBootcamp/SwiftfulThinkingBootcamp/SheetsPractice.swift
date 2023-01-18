//
//  SheetsPractice.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Rifqi Muhammad Aziz on 18/01/23.
//

import SwiftUI

struct SheetsPractice: View {
    
    @State var showSheet: Bool = false
    
    var body: some View {
        ZStack {
            Color.green.ignoresSafeArea()
            
            Button(action: {
                showSheet.toggle()
            }, label: {
                Text("Show Sheet")
                    .foregroundColor(.green)
                    .font(.headline)
                    .padding(20)
                    .background(Color.white.cornerRadius(10))
            })
            .fullScreenCover(isPresented: $showSheet, content: { // fullscreen sheet
                SecondScreen()
            })
//            .sheet(isPresented: $showSheet, content: { // pop up sheet
            // do not add any conditional logic in sheet
//                SecondScreen()
//            })
        }
    }
}

// Sheet
struct SecondScreen: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            Color.red.ignoresSafeArea()
            
            Button(action: {
                presentationMode.wrappedValue.dismiss() // close sheet
            }, label: {
                Image(systemName: "xmark")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .padding(20)
            })
        }
    }
}


struct SheetsPractice_Previews: PreviewProvider {
    static var previews: some View {
        SheetsPractice()
//        SecondScreen()
    }
}
