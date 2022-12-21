//
//  Post.swift
//  GetJSON
//
//  Created by Rifqi Muhammad Aziz on 21/12/22.
//

import Foundation
import SwiftUI


struct Post : Codable, Identifiable {
    public var id: Int
    public var title: String
    public var body: String
}
