//
//  ContentView.swift
//  CustomNavigationView
//
//  Created by Rifqi Muhammad Aziz on 11/12/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            TabView {
                Home()
                    .tabItem {
                        Image(systemName: "house.fill")
                        Text("Home")
                    }
                
                Home()
                    .tabItem {
                        Image(systemName: "paperplane.fill")
                        Text("Explore")
                    }
                
                Home()
                    .tabItem {
                        Image(systemName: "tray.fill")
                        Text("Subscription")
                    }
                
                Home()
                    .tabItem {
                        Image(systemName: "envelope.fill")
                        Text("Inbox")
                    }
                
                Home()
                    .tabItem {
                        Image(systemName: "play.rectangle.fill")
                        Text("Download")
                    }
            }
            .accentColor(.red)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Home : View {
    var body: some View {
        NavigationView {
            Content()
                .navigationBarItems(
                    leading: HStack {
                        Button(action: {print("Button Works!")}) {
                            Image("youtube")
                                .renderingMode(.original)
                                .resizable()
                                .frame(width: 90, height: 60)
                        }
                    },
                    trailing: HStack(spacing: 5) {
                        Button(action: {print("Button Works!")}) {
                            Image(systemName: "tray.full")
                                .foregroundColor(Color.secondary)
                        }
                        Button(action: {print("Button Works!")}) {
                            Image(systemName: "video.fill")
                                .foregroundColor(Color.secondary)
                        }
                        Button(action: {print("Button Works!")}) {
                            Image(systemName: "magnifyingglass")
                                .foregroundColor(Color.secondary)
                        }
                        Button(action: {print("Button Works!")}) {
                            Image("profile")
                                .renderingMode(.original)
                                .resizable()
                                .frame(width: 30, height: 30)
                                .clipShape(Circle())
                        }
                    }
                )
                .navigationBarTitle("", displayMode: .inline)
        }
        .navigationViewStyle(StackNavigationViewStyle()) // nav for ipad
    }
}

struct Content : View {
    var body: some View {
        List {
            // Content 1
            CellContent(imageContent: "content1", profileContent: "profile", title: "4K Nature View of Tokyo, Japan", description: "Nature View in Tokyo, Japan with 4K 60FPS", duration: "10:00")
            
            // Content 2
            CellContent(imageContent: "content2", profileContent: "profile", title: "4K Nature View of Tokyo, Japan", description: "Nature View in Tokyo, Japan with 4K 60FPS", duration: "10:00")
            
            // Content 3
            CellContent(imageContent: "content3", profileContent: "profile", title: "4K Nature View of Tokyo, Japan", description: "Nature View in Tokyo, Japan with 4K 60FPS", duration: "10:00")
    
        }
    }
}

// Component Cell
struct CellContent : View {
    
    // Props
    var imageContent : String
    var profileContent : String
    var title : String
    var description : String
    var duration : String
    
    var body: some View {
        VStack {
            // Thumbnail
            ZStack(alignment: .bottomTrailing) {
                Image(imageContent)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                Text(duration)
                    .padding(.all, 5)
                    .background(Color.black)
                    .foregroundColor(Color.white)
                    .font(.caption)
                    .cornerRadius(5)
                    .padding(.trailing, 5)
                    .padding(.bottom, 5)
            }
            
            // Video Name
            HStack(spacing: 20) {
                Image(profileContent)
                    .resizable()
                    .frame(width: 40, height: 40)
                    .clipShape(Circle())
                VStack(alignment: .leading) {
                    Text(title)
                        .font(.headline)
                    Text(description)
                        .font(.caption)
                    
                }
                Spacer()
                Image(systemName: "list.bullet")
            }
        }
    }
}
