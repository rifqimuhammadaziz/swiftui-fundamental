//
//  ContentView.swift
//  SwiftUI-UserLocation
//
//  Created by Rifqi Muhammad Aziz on 04/02/23.
//

import SwiftUI
import MapKit

struct ContentView: View {
    
    @StateObject private var viewModel = ContentViewModel()
    
    var body: some View {
        Map(coordinateRegion: $viewModel.region, showsUserLocation: true)
            .ignoresSafeArea()
            .tint(Color(.systemPink))
            .onAppear {
                viewModel.checkIfLocationServiceIsEnabled()
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
