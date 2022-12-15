//
//  ContentView.swift
//  EnvironmentObject
//
//  Created by Rifqi Muhammad Aziz on 13/12/22.
//

import SwiftUI

struct ContentView: View {
    
//    @EnvironmentObject var userAuth : AuthUser
    
    var body: some View {
//        if !userAuth.isLoggedIn {
//            return AnyView(Login())
//        } else {
//            return AnyView(Home())
//        }
        Home()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Login : View {
    
//    @EnvironmentObject var userAuth : AuthUser
    
    // Custom Color
    let lightGreyColor = Color(red: 239.0/255.0, green: 243.0/255.0, blue: 244.0/255.0, opacity: 1.0)
    
    // State
    @State var username : String = ""
    @State var password : String = ""
    
    // Function
//    func checkLogin() {
//        if (username == "admin" && password == "admin") {
//            userAuth.isLoggedIn = true
//        } else {
//            userAuth.isLoggedIn = false
//            userAuth.isCorrect = false
//        }
//    }
//
    
    var body: some View {
        ZStack {
            Color.white
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                HStack {
                    HStack {
                        VStack {
                            Text("Halo!").bold().font(.largeTitle).foregroundColor(Color.white)
                            Text("Selamat Datang").font(.title).foregroundColor(Color.white)
                        }
                        
                        Spacer()
                        
                        Image(systemName: "lock")
                            .resizable()
                            .foregroundColor(Color.white)
                            .frame(width: 50, height: 70)
                            .padding()
                    }
                    Spacer()
                }
                .frame(height: 180)
                .padding(30)
                .background(Color.purple)
                .clipShape(CustomShape(corner: .bottomRight, rad: 50))
                .edgesIgnoringSafeArea(.top)
                
                // Form Field
                VStack(alignment: .leading) {
                    // Username
                    Text("Nama Pengguna / Alamat Email")
                    TextField("Nama Pengguna...", text: $username)
                        .padding()
                        .background(lightGreyColor)
                        .cornerRadius(5.0)
                    
                    // Password
                    Text("Kata Sandi")
                    SecureField("Kata Sandi", text: $password)
                        .padding()
                        .background(lightGreyColor)
                        .cornerRadius(5.0)
                    
                    // Show Alert when Incorrect Login
//                    if (!userAuth.isCorrect) {
//                        Text("Username is incorrect")
//                    }
                    
                    // Lupa Kata Sandi Button
                    HStack {
                        Button(action: {}) {
                            Text("Lupa Kata Sandi?")
                        }
                    }
                    .padding([.top, .bottom], 10)
                    
                    // Masuk Button
                    HStack {
                        Spacer()
                        Button(action: {}) {
                            Text("Masuk").bold().font(.callout).foregroundColor(.white)
                        }
                        Spacer()
                    }
                    .padding()
                    .background(Color.purple)
                    .cornerRadius(15)
                    
                    // Peraturan Privasi
                    HStack {
                        Spacer()
                        Button(action: {}) {
                            Text("Peraturan Privasi").bold().font(.callout).foregroundColor(.purple)
                        }
                        Spacer()
                    }
                    .padding()
                    
                    // Daftar Akun
                    HStack {
                        Text("Belum mempunyai akun?")
                        Spacer()
                        Button(action: {}) {
                            Text("Daftar").bold().font(.callout).foregroundColor(.purple)
                        }
                    }
                    .padding()
                }
                .padding()
                
                Spacer()
            }
        }
    }
}

// Home View
struct Home : View {
    
//    @EnvironmentObject var userAuth : AuthUser
    
    var body: some View {
        NavigationView {
            ZStack {
                Color.purple
                
                Text("Home Page").foregroundColor(.white)
                    .navigationBarTitle("Home", displayMode: .inline)
                    .navigationBarItems(trailing: Button(action: {print("this should be change userAuth isLoggedIn state to false")}) {
                        Image(systemName: "arrowshape.turn.up")
                    })
            }
        }
    }
}

// Custom Shape for Header
struct CustomShape : Shape {
    var corner : UIRectCorner
    var rad : CGFloat
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corner, cornerRadii: CGSize(width: rad, height: rad))
        
        return Path(path.cgPath)
    }
}
