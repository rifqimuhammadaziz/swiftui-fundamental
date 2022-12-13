//
//  DataModel.swift
//  ModelData
//
//  Created by Rifqi Muhammad Aziz on 13/12/22.
//

import Foundation

// Model Data
struct VehicleModel : Identifiable {
    let id : Int
    let name : String
    let image : String
    let price : Int
    let location : String
    let ratingStar : Int
    let ratingCount : Int
    
    // Constructor
    init(id: Int, name: String, image: String, price: Int, location: String, ratingStar: Int, ratingCount: Int) {
        self.id = id
        self.name = name
        self.image = image
        self.price = price
        self.location = location
        self.ratingStar = ratingStar
        self.ratingCount = ratingCount
    }
}
