//
//  AuthUser.swift
//  EnvironmentObject
//
//  Created by Rifqi Muhammad Aziz on 13/12/22.
//

import Foundation
import Combine
import SwiftUI

class AuthUser : ObservableObject {
    
    // 1 Create didChange
    var didChange = PassthroughSubject<AuthUser, Never>()
    
    // Global/Public Variable
    @Published var isCorrect : Bool = true // for print error
    
    // 2 Change state
    @Published var isLoggedIn : Bool = false {
        didSet {
            didChange.send(self)
        }
    }
    
    // 3 Check login function
    func checkLogin(password: String, email: String) {
        // URL Backend
        guard let url = URL(string: "http://localhost:8080/auth/api/login") else {
            return
        }
        
        let body : [String : String] = ["password": password, "email": email]
        
        guard let finalBody = try? JSONEncoder().encode(body) else {
            return
        }
        
        var request = URLRequest(url: url)
        
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        request.httpMethod = "POST"
        request.httpBody = finalBody
        
        URLSession.shared.dataTask(with: request) { (data, response, error) in
            guard let data = data, error == nil else {return}
            
            // 5 decode data
            let result = try? JSONDecoder().decode(UserLogin.self, from: data)
            
            // if data found
            if let result = result {
                DispatchQueue.main.async {
                    if (result.success) {
                        self.isLoggedIn = true
                    }
                }
            } else {
                DispatchQueue.main.async {
                    self.isCorrect = false
                }
            }
        }.resume()
    }
}
