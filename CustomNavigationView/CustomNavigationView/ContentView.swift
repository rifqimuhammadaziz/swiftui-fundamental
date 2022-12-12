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
            VStack {
                // Thumbnail
                ZStack(alignment: .bottomTrailing) {
                    Image("content1")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                    Text("10:00")
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
                    Image("profile")
                        .resizable()
                        .frame(width: 40, height: 40)
                        .clipShape(Circle())
                    VStack(alignment: .leading) {
                        Text("4K Nature View of Japan")
                            .font(.headline)
                        Text("Nature View at Tokyo, Japan with 4K Scale Up Videography")
                            .font(.caption)
                        
                    }
                    Spacer()
                    Image(systemName: "list.bullet")
                }
            }
            
            // Content 2
            VStack {
                // Thumbnail
                ZStack(alignment: .bottomTrailing) {
                    Image("content2")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                    Text("10:00")
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
                    Image("profile")
                        .resizable()
                        .frame(width: 40, height: 40)
                        .clipShape(Circle())
                    VStack(alignment: .leading) {
                        Text("4K Nature View of Japan")
                            .font(.headline)
                        Text("Nature View at Tokyo, Japan with 4K Scale Up Videography")
                            .font(.caption)
                        
                    }
                    Spacer()
                    Image(systemName: "list.bullet")
                }
            }
            
            // Content 3
            VStack {
                // Thumbnail
                ZStack(alignment: .bottomTrailing) {
                    Image("content3")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                    Text("10:00")
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
                    Image("profile")
                        .resizable()
                        .frame(width: 40, height: 40)
                        .clipShape(Circle())
                    VStack(alignment: .leading) {
                        Text("4K Nature View of Japan")
                            .font(.headline)
                        Text("Nature View at Tokyo, Japan with 4K Scale Up Videography")
                            .font(.caption)
                        
                    }
                    Spacer()
                    Image(systemName: "list.bullet")
                }
            }
        }
    }
}
