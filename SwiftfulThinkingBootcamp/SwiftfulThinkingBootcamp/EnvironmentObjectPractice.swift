//
//  EnvironmentObjectPractice.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Rifqi Muhammad Aziz on 23/01/23.
//

import SwiftUI

// pass data around app/views without passing it from screen to screen

class EnvironmentViewModel: ObservableObject {
    @Published var dataArray: [String] = []
    
    // execute at first time class created
    init() {
        getData()
    }
    
    func getData() {
        self.dataArray.append("Apple")
        self.dataArray.append("Grape")
        self.dataArray.append("Orange")
        self.dataArray.append(contentsOf: ["Kiwi", "Durian", "Peach"])
    }
}

struct EnvironmentObjectPractice: View {
    
    @StateObject var viewModel: EnvironmentViewModel = EnvironmentViewModel()
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(viewModel.dataArray, id: \.self) { item in
                    NavigationLink(
                        destination: DetailView(selectedItem: item),
                        label: {
                            Text(item)
                        }
                    )
                }
            }
            .navigationTitle("Fruit")
        }
        .environmentObject(viewModel) // for parse data between view
    }
}

struct DetailView: View {
    
    let selectedItem: String
//    @ObservedObject var viewModel: EnvironmentViewModel
    
    var body: some View {
        ZStack {
            // background
            Color.orange.ignoresSafeArea()
            
            // foreground
            NavigationLink(
                destination: FinalView(),
                label: {
                    Text(selectedItem)
                        .font(.headline)
                        .foregroundColor(.orange)
                        .padding()
                        .padding(.horizontal)
                        .background(.white)
                        .cornerRadius(30)
                }
            )
        }
    }
}

struct FinalView: View {
    
//    @ObservedObject var viewModel: EnvironmentViewModel
    @EnvironmentObject var viewModel: EnvironmentViewModel
    
    var body: some View {
        ZStack {
            // background
            LinearGradient(
                gradient: Gradient(colors: [Color(#colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1)), Color(#colorLiteral(red: 0.1215686277, green: 0.01176470611, blue: 0.4235294163, alpha: 1))]),
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
            .ignoresSafeArea()
            
            // foreground
            ScrollView {
                VStack(spacing: 20) {
                    ForEach(viewModel.dataArray, id: \.self) { item in
                        Text(item)
                    }
                }
                .foregroundColor(.white)
                .font(.largeTitle)
            }
        }
    }
}

struct EnvironmentObjectPractice_Previews: PreviewProvider {
    static var previews: some View {
        EnvironmentObjectPractice()
        //        DetailView(selectedItem: "Orange")
        //        FinalView()
    }
}
