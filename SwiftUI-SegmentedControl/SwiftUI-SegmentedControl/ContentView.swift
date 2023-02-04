//
//  ContentView.swift
//  SwiftUI-SegmentedControl
//
//  Created by Rifqi Muhammad Aziz on 04/02/23.
//

import SwiftUI

struct ContentView: View {
    
    init() {
        UISegmentedControl.appearance().selectedSegmentTintColor = .yellow
        UISegmentedControl.appearance().setTitleTextAttributes([.foregroundColor: UIColor.black], for: .selected)
    }
    
    @State private var selectedSide: HeroOfDota = .tank
    
    var body: some View {
        NavigationStack {
            VStack {
                Picker("Choose a Side", selection: $selectedSide) {
                    ForEach(HeroOfDota.allCases, id: \.self) {
                        Text($0.rawValue)
                    }
                }
                .pickerStyle(SegmentedPickerStyle())
                .padding()
                
                Spacer()
                ChoosenHeroView(selectedSide: selectedSide)
                Spacer()
            }
            .navigationTitle("Choose a side")
        }
    }
}

enum HeroOfDota: String, CaseIterable {
    case tank = "Tank"
    case assassin = "Assassin"
    case carry = "Carry"
}

struct ChoosenHeroView: View {
    var selectedSide: HeroOfDota
    
    var body: some View {
        switch selectedSide {
        case .tank:
            HeroImageView(heroName: "huskar")
        case .assassin:
            HeroImageView(heroName: "phantom_assassin")
        case .carry:
            HeroImageView(heroName: "slark")
        }
    }
}

struct HeroImageView: View {
    var heroName: String
    
    var body: some View {
        Image(heroName)
            .resizable()
            .scaledToFit()
            .frame(height: 300)
            .shadow(color: .white, radius: 100)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
