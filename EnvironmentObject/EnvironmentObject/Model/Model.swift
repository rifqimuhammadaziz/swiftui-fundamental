//
//  Model.swift
//  EnvironmentObject
//
//  Created by Rifqi Muhammad Aziz on 23/12/22.
//

import Foundation
import SwiftUI

// 4 Create model data based on response/structur of backend
struct UserLogin : Codable, Identifiable {
    let id = UUID()
    let success: Bool
    let token: String
    let expired: Int
    let currUser: Int
    let user: String
    let role: Int
    let isVerified: Int
}
