//
//  AppStoragePractice.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Rifqi Muhammad Aziz on 23/01/23.
//

import SwiftUI

struct AppStoragePractice: View {
    
//    @State var currentUsername: String?
    @AppStorage("name") var currentUsername: String? // store data
    
    var body: some View {
        VStack(spacing: 20) {
            Text(currentUsername ?? "Add username here.")
            
            if let name = currentUsername {
                Text(name)
            }
            
            Button("Save".uppercased()) {
                let name: String = "Xenostheord"
                currentUsername = name
//                UserDefaults.standard.set(name, forKey: "name") // save data to storage
            }
        }
//        .onAppear { // when screen loads, it will find the value of 'name'
//            currentUsername = UserDefaults.standard.string(forKey: "name")
//        }
    }
}

struct AppStoragePractice_Previews: PreviewProvider {
    static var previews: some View {
        AppStoragePractice()
    }
}
