//
//  ContentView.swift
//  ModelData
//
//  Created by Rifqi Muhammad Aziz on 13/12/22.
//

import SwiftUI

struct ContentView: View {
    
    // New Data
    let data : [VehicleModel] = [
        VehicleModel(id: 1, name: "Nissan GTR 35", image: "NissanGTR35", price: 950000000, location: "Semarang, Jawa Tengah", ratingStar: 3, ratingCount: 33),
        VehicleModel(id: 2, name: "Civic Turbo", image: "CivicTurbo", price: 450000000, location: "Semarang, Jawa Tengah", ratingStar: 5, ratingCount: 33),
        VehicleModel(id: 3, name: "Pajero Sport", image: "PajeroSport", price: 350000000, location: "Semarang, Jawa Tengah", ratingStar: 5, ratingCount: 33),
        VehicleModel(id: 4, name: "Fortuner", image: "Fortuner", price: 380000000, location: "Semarang, Jawa Tengah", ratingStar: 5, ratingCount: 33),
        VehicleModel(id: 5, name: "Veloz", image: "Veloz", price: 400000000, location: "Semarang, Jawa Tengah", ratingStar: 5, ratingCount: 33),
        VehicleModel(id: 6, name: "Land Cruiser", image: "LandCruiser", price: 800000000, location: "Semarang, Jawa Tengah", ratingStar: 5, ratingCount: 33)
    ]
    
//    @State var cartCount: Int = 0
    @ObservedObject var globalData = GlobalObject()
    
    var body: some View {
        NavigationView {
            ScrollView {
                ForEach(data) { row in
                    VStack(spacing: 10) {
                        Vehicle(data: row, cart: self.globalData)
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
                        
                        NavigationLink(destination: DetailView(globalData: globalData)) {
                            // Get Data State
                            CartView(cart: globalData)
                        }
                    }
            )
        }
        .accentColor(Color.secondary)
        .navigationViewStyle(StackNavigationViewStyle()) // landscape handler
    }
}

struct CartView : View {
    
//    @Binding var cartCount: Int

    @ObservedObject var cart : GlobalObject
    
    var body: some View {
        ZStack {
            Image(systemName: "cart.fill")
            
            Text("\(self.cart.amount)")
                .foregroundColor(Color.white)
                .frame(width: 10, height: 10)
                .font(.body)
                .padding(5)
                .background(Color.red)
                .clipShape(Circle())
                .offset(x: 10, y: -10)
        }
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
//    @Binding var cartCount : Int

    @ObservedObject var cart : GlobalObject
    
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
                    ForEach(0..<self.data.ratingStar) {
                        items in
                        Image(systemName: "star.fill")
                            .foregroundColor(Color.yellow)
                    }
                    Text("\(self.data.ratingCount)")
                }
            }
            .padding(.leading)
            .padding(.trailing)
            
            BuyButton(cart: cart)
        }
        .background(Color("MyGray"))
        .cornerRadius(15)
    }
}

struct BuyButton : View {
    
//    @Binding var cartCount : Int
    
    @ObservedObject var cart : GlobalObject
    
    var body: some View {
        Button(action: {self.cart.amount += 1}) {
            HStack {
                Spacer()
                HStack {
                    Image(systemName: "cart")
                    Text("BUY")
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
}

struct DetailView : View {
    
    @ObservedObject var globalData : GlobalObject
    
    var body: some View {
        NavigationView {
            Text("Detail")
                .navigationBarTitle("Detail")
                .navigationBarItems(
                    trailing:
                        HStack(spacing: 20) {
                            Button(action: {print()}) {
                                Image(systemName: "person.fill")
                            }
                            CartView(cart: globalData)
                        })
        }
    }
}
