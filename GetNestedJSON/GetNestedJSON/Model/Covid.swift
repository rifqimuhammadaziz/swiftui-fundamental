//
//  Covid.swift
//  GetNestedJSON
//
//  Created by Rifqi Muhammad Aziz on 22/12/22.
//

import Foundation
import SwiftUI

struct Total : Codable, Identifiable {
    let id = UUID()
    let jumlah_positif : Int
    let jumlah_meninggal : Int
    let jumlah_sembuh : Int
    let jumlah_dirawat : Int
}

struct Update : Codable {
    let total : Total
}

struct CovidResponse : Codable {
    var update : Update
}
