//
//  TabViewPractice.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Rifqi Muhammad Aziz on 21/01/23.
//

import SwiftUI

struct TabViewPractice: View {
    
    @State var selectedTab: Int = 0
    
    let icons: [String] = [
        "heart.fill", "globe", "house.fill", "person.fill"
    ]
    
    var body: some View {
//        TabView(selection: $selectedTab) {
//            HomeView(selectTab: $selectedTab)
//                .tabItem {
//                    Image(systemName: "house.fill")
//                    Text("Home")
//                }
//                .tag(0)
//
//            Text("BROWSE TAB")
//                .tabItem {
//                    Image(systemName: "globe")
//                    Text("Browse")
//                }
//                .tag(1)
//            Text("PROFILE TAB")
//                .tabItem {
//                    Image(systemName: "person.fill")
//                    Text("Profile")
//                }
//                .tag(2)
//        }
//        .tint(.blue)
        
        TabView {
            ForEach(icons, id: \.self) { icon in
                Image(systemName: icon)
                    .resizable()
                    .scaledToFit()
                    .padding()
            }
        }
        .background(RadialGradient(gradient: Gradient(colors: [Color.red, Color.blue]), center: .center, startRadius: 5, endRadius: 500))
        .frame(height: 300)
        .cornerRadius(10)
        .padding()
        .tabViewStyle(PageTabViewStyle())
    }
}

struct TabViewPractice_Previews: PreviewProvider {
    static var previews: some View {
        TabViewPractice()
    }
}

struct HomeView: View {
    
    @Binding var selectTab: Int
    
    var body: some View {
        ZStack {
            Color.gray.ignoresSafeArea()
            VStack {
                Text("Home Tab")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                
                Button(action: {
                    selectTab = 2
                }, label: {
                    Text("Go To Profile")
                        .font(.headline)
                        .padding()
                        .padding(.horizontal)
                        .background(.white)
                        .cornerRadius(10)
                })
            }
        }
    }
}
