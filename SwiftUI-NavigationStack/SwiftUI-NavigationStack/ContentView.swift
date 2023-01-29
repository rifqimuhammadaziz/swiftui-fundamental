//
//  ContentView.swift
//  SwiftUI-NavigationStack
//
//  Created by Rifqi Muhammad Aziz on 27/01/23.
//

import SwiftUI

struct ContentView: View {
    
    var platforms: [Platform] = [
        .init(name: "Playstation", imageName: "playstation.logo", color: .indigo),
        .init(name: "Xbox", imageName: "xbox.logo", color: .green),
        .init(name: "PC", imageName: "pc", color: .pink),
        .init(name: "Mobile", imageName: "iphone", color: .mint),
    ]
    
    var games: [Game] = [
        .init(name: "Call Of Duty Series", rating: "9.5"),
        .init(name: "Battlefield Series", rating: "9.6"),
        .init(name: "Player Unknown Battleground", rating: "9.2"),
        .init(name: "Fortnite", rating: "9.1"),
        .init(name: "Minecraft", rating: "8.2")
    ]
    
    @State private var path = NavigationPath()
    
    var body: some View {
        NavigationStack(path: $path) {
            List {
                Section("Platform") {
                    ForEach(platforms, id: \.name) { platform in
                        NavigationLink(value: platform) {
                            Label(platform.name, systemImage: platform.imageName)
                                .foregroundColor(platform.color)
                        }
                    }
                }
                
                Section("Games") {
                    ForEach(games, id: \.name) { game in
                        NavigationLink(value: game) {
                            Text(game.name)
                        }
                    }
                }
            }
            .navigationTitle("Gaming")
            .navigationDestination(for: Platform.self) { platform in
                ZStack {
                    // background
                    platform.color.ignoresSafeArea()

                    VStack {
                        Label(platform.name, systemImage: platform.imageName)
                            .font(.largeTitle)
                            .bold()
                        
                        List {
                            ForEach(games, id: \.name) { game in
                                NavigationLink(value: game) {
                                    Text(game.name)
                                }
                            }
                        }
                    }
                }
            }
            .navigationDestination(for: Game.self) { game in
                VStack(spacing: 20) {
                    Text("\(game.name) - \(game.rating)")
                        .font(.largeTitle.bold())
                    
                    Button("Recommended Game") {
                        path.append(games.randomElement()!)
                    }
                    
                    Button("Go to another Platform") {
                        path.append(platforms.randomElement()!)
                    }
                    
                    Button("Go Home") {
                        path.removeLast(path.count) // reset path of navigationlink (deep of link clicked)
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Platform: Hashable {
    let name: String
    let imageName: String
    let color: Color
}

struct Game: Hashable {
    let name: String
    let rating: String
}
