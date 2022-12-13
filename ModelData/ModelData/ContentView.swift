//
//  ContentView.swift
//  ModelData
//
//  Created by Rifqi Muhammad Aziz on 13/12/22.
//

import SwiftUI

// Model Data
struct VehicleModel : Identifiable {
    let id : Int
    let name : String
    let image : String
    let price : Int
    let location : String
    let rating : Int
    
    
    // Constructor
    init(id: Int, name: String, image: String, price: Int, location: String, rating: Int) {
        self.id = id
        self.name = name
        self.image = image
        self.price = price
        self.location = location
        self.rating = rating
    }
}

struct ContentView: View {
    
    // New Data
    let data : [VehicleModel] = [
        VehicleModel(id: 1, name: "NissanGTR35", image: "NissanGTR35", price: 5000000000, location: "Semarang, Jawa Tengah", rating: 5),
        VehicleModel(id: 2, name: "CivicTurbo", image: "CivicTurbo", price: 5000000000, location: "Semarang, Jawa Tengah", rating: 5),
        VehicleModel(id: 3, name: "PajeroSport", image: "PajeroSport", price: 5000000000, location: "Semarang, Jawa Tengah", rating: 5),
        VehicleModel(id: 4, name: "Fortuner", image: "Fortuner", price: 5000000000, location: "Semarang, Jawa Tengah", rating: 5),
        VehicleModel(id: 5, name: "Veloz", image: "Veloz", price: 5000000000, location: "Semarang, Jawa Tengah", rating: 5),
        VehicleModel(id: 6, name: "LandCruiser", image: "LandCruiser", price: 5000000000, location: "Semarang, Jawa Tengah", rating: 5)
    ]
    
    var body: some View {
        NavigationView {
            ScrollView {
                ForEach(data) { row in
                    VStack(spacing: 10) {
                        Vehicle(data: row)
                    }
                    .padding()
                }
            }
            .navigationBarTitle("Sport Car")
            .navigationBarItems(
                trailing:
                    HStack(spacing: 10) {
                        Button(action: {print("It Works!")}) {
                            Image(systemName: "person.fill")
                        }
                        Button(action: {print("It Works!")}) {
                            Image(systemName: "cart.fill")
                        }
                    }
            )
        }
        .accentColor(Color.secondary)
        .navigationViewStyle(StackNavigationViewStyle()) // landscape handler
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

// Component
struct Vehicle : View {
    
    let data : VehicleModel
    
    var body: some View {
        VStack(alignment: .leading) {
            ZStack(alignment: .topTrailing) {
                Image(self.data.image)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(height: 200)
                    .clipped()
                Button(action: {print("It Works!")}) {
                    Image(systemName: "heart")
                        .padding()
                        .foregroundColor(Color.red)
                }
            }
            
            Text(self.data.name)
                .font(.title)
                .bold()
                .padding(.leading)
                .padding(.trailing)
            
            Text("Rp. \(self.data.price)")
                .font(.title)
                .foregroundColor(Color.red)
                .bold()
                .padding(.leading)
                .padding(.trailing)
            
            HStack {
                Image(systemName: "mappin.circle")
                Text(self.data.location)
            }
            .padding(.leading)
            .padding(.trailing)
            
            HStack {
                HStack {
                    ForEach(0..<self.data.rating) {
                        items in
                        Image(systemName: "star.fill")
                            .foregroundColor(Color.yellow)
                    }
                }
            }
            .padding(.leading)
            .padding(.trailing)
            
            Button(action: {print("It Works!")}) {
                HStack {
                    Spacer()
                    HStack {
                        Image(systemName: "cart")
                        Text("Add to Cart")
                            .font(.callout)
                            .padding()
                    }
                    Spacer()
                }
            }
            .background(Color.green)
            .foregroundColor(Color.white)
            .cornerRadius(10)
            .padding()
        }
        .background(Color("MyGray"))
        .cornerRadius(15)
    }
}
