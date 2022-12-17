//
//  ContentView.swift
//  DragGesture
//
//  Created by Rifqi Muhammad Aziz on 16/12/22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var showMenu = false
    @State private var offset = CGSize.zero
    
    var body: some View {
        
        let drag = DragGesture()
            .onChanged { // when on drag
                gesture in
                self.offset = gesture.translation
            }
            .onEnded { // when drag end - close showMenu toggle
                value in
                self.offset = CGSize.zero
                self.showMenu = false
            }
        
        return ZStack {
            Color.orange
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("store")
                    .resizable()
                    .frame(width: 300, height: 300)
                Button(action: {
                    withAnimation {
                        self.showMenu.toggle()
                    }
                }) {
                    Text("Discount Promo")
                        .padding()
                        .background(Color.green)
                        .foregroundColor(Color.white)
                        .cornerRadius(20)
                }
            }
            
            if self.showMenu {
                Coupon()
                    .transition(.move(edge: .bottom))
                    .offset(y: self.offset.height)
                    .gesture(drag)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Coupon : View {
    var body: some View {
        VStack {
            Text("Congratulation you got discount 50 points")
                .font(.largeTitle)
                .bold()
                .foregroundColor(Color.white)
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
        .background(Color.red)
        .cornerRadius(20)
        .edgesIgnoringSafeArea(.bottom)
    }
}
