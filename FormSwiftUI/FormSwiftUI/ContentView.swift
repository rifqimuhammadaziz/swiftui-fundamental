//
//  ContentView.swift
//  FormSwiftUI
//
//  Created by Rifqi Muhammad Aziz on 10/12/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            Form {
                // Section Profile
                Section() {
                    NavigationLink(destination: About()) {
                        HStack {
                            // Photo Profile
                            Image("profile")
                                .resizable()
                                .frame(width: 50, height: 50)
                                .clipShape(Circle())
                            
                            // Name & Status
                            VStack(alignment: .leading) {
                                Text("Rifqi Muhammad Aziz")
                                    .font(.headline)
                                Text("Available")
                                    .font(.caption)
                            }
                        }
                        .padding(.top, 10)
                        .padding(.bottom, 10)
                    }
                }
                
                // Section General Setting
                Section(header: Text("General Setting")) {
                    NavigationLink(destination: About()) {
                        HStack(spacing: 20) {
                            Image(systemName: "star.fill")
                                .frame(width: 35, height: 35)
                                .background(Color.orange)
                                .cornerRadius(10)
                                .foregroundColor(Color.white)
                            Text("Starred Message")
                        }
                    }
                    
                    NavigationLink(destination: About()) {
                        HStack(spacing: 20) {
                            Image(systemName: "tv")
                                .frame(width: 35, height: 35)
                                .background(Color.green)
                                .cornerRadius(10)
                                .foregroundColor(Color.white)
                            Text("Web/Desktop")
                        }
                    }
                }

                
                // Section Account Setting
                Section(header: Text("Account Setting")) {
                    NavigationLink(destination: About()) {
                        HStack(spacing: 20) {
                            Image(systemName: "person.fill")
                                .frame(width: 35, height: 35)
                                .background(Color.blue)
                                .cornerRadius(10)
                                .foregroundColor(Color.white)
                            Text("Account")
                        }
                    }
                    NavigationLink(destination: About()) {
                        HStack(spacing: 20) {
                            Image(systemName: "lock.fill")
                                .frame(width: 35, height: 35)
                                .background(Color.cyan)
                                .cornerRadius(10)
                                .foregroundColor(Color.white)
                            Text("Privacy")
                        }
                    }
                    NavigationLink(destination: About()) {
                        HStack(spacing: 20) {
                            Image(systemName: "phone.circle")
                                .frame(width: 35, height: 35)
                                .background(Color.green)
                                .cornerRadius(10)
                                .foregroundColor(Color.white)
                            Text("Chat")
                        }
                    }
                    NavigationLink(destination: About()) {
                        HStack(spacing: 20) {
                            Image(systemName: "message.badge")
                                .frame(width: 35, height: 35)
                                .background(Color.red)
                                .cornerRadius(10)
                                .foregroundColor(Color.white)
                            Text("Notification")
                        }
                    }
                    NavigationLink(destination: About()) {
                        HStack(spacing: 20) {
                            Image(systemName: "icloud")
                                .frame(width: 35, height: 35)
                                .background(Color.green)
                                .cornerRadius(10)
                                .foregroundColor(Color.white)
                            Text("Storage & Data")
                        }
                    }
                }
                
                // Section Information
                Section(header: Text("Information")) {
                    NavigationLink(destination: About()) {
                        HStack(spacing: 20) {
                            Image(systemName: "info")
                                .frame(width: 35, height: 35)
                                .background(Color.blue)
                                .cornerRadius(10)
                                .foregroundColor(Color.white)
                            Text("Help")
                        }
                    }
                    NavigationLink(destination: About()) {
                        HStack(spacing: 20) {
                            Image(systemName: "heart.fill")
                                .frame(width: 35, height: 35)
                                .background(Color.pink)
                                .cornerRadius(10)
                                .foregroundColor(Color.white)
                            Text("Tell a Friend")
                        }
                    }
                }
                
            }
            .navigationBarTitle("Settings")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct About : View {
    var body: some View {
        HStack {
            VStack(alignment: .center) {
                Text("About Page")
                    .font(.headline)
                Text("It Works")
                    .font(.caption)
            }
        }
    }
}
