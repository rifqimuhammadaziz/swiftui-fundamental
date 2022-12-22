//
//  APIService.swift
//  GetNestedJSON
//
//  Created by Rifqi Muhammad Aziz on 22/12/22.
//

import Foundation
import SwiftUI
import Combine

// Data State Global
class APIService : ObservableObject {
    
    let objectWillChange = ObservableObjectPublisher()
    @Published var dataTotal = [Total]() {
        willSet {
            objectWillChange.send()
        }
    }
    
    init() {
        guard let url = URL(string: "https://data.covid19.go.id/public/api/update.json") else {
            fatalError("Invalid URL")
        }
        
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            guard let data = data, error == nil else {
                return
            }
            
            let result = try? JSONDecoder().decode(CovidResponse.self, from: data)
            
            // if result is exist / data found
            if let result = result {
                DispatchQueue.main.async {
                    self.dataTotal = [result.update.total]
                    
                    print(result)
                }
            }
        }
        .resume()
    }
}
