//
//  ContentView.swift
//  SwiftUIBasic
//
//  Created by Rifqi Muhammad Aziz on 10/12/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Image("bg")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            VStack {
                Logo()
                FormBox()
            }
            .padding(.all, 20)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

// Logo extend View
struct Logo : View {
    var body : some View {
        VStack(spacing: 20) {
            Image(systemName: "swift")
                .resizable()
                .frame(width: 80, height: 80)
                .background(Color("MyCustomColor"))
                .foregroundColor(Color.white)
                .padding()
                .background(Color("MyCustomColor"))
                .cornerRadius(20)
            
            Text("Hello SwiftUI")
                .foregroundColor(Color.white)
        }
    }
}

struct FormBox : View {
    
    @State var username : String = ""
    @State var password : String = ""
    
    var body: some View {
        VStack(alignment: .leading) {
            // Username Input
            Text("Username")
                .font(.callout).bold()
            TextField("Username", text: $username)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            // Password Input
            Text("Password")
                .font(.callout).bold()
            SecureField("Password", text: $password)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            // Button
            Button(action: {print("Hello World!")}) {
                HStack {
                    Text("Sign In")
                    Spacer()
                }
            }
            .foregroundColor(Color.white)
            .padding()
            .background(Color("MyCustomColor"))
            .cornerRadius(10)
        }
        .padding(.all, 30)
        .background(Color.cyan)
        .cornerRadius(10)
    }
}
