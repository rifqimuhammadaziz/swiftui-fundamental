//
//  AuthUser.swift
//  EnvironmentObject
//
//  Created by Rifqi Muhammad Aziz on 13/12/22.
//

import Foundation

class AuthUser : ObservableObject {
    // Global/Public Variable
    @Published var isLoggedIn : Bool = false
    @Published var isCorrect : Bool = true // for print error
}
