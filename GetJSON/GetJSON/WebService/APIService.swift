//
//  APIService.swift
//  GetJSON
//
//  Created by Rifqi Muhammad Aziz on 21/12/22.
//

import Foundation
import SwiftUI

class APIService: ObservableObject {
    @Published var post = [Post]()
    
    init() {
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/posts") else {return}
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            do {
                if let postData = data {
                    // transform data
                    let decodedData = try JSONDecoder().decode([Post].self, from: postData)
                    DispatchQueue.main.async {
                        self.post = decodedData
                    }
                } else { // if no data found
                    print("Data not found")
                }
            } catch {
                print("error catch data")
            }
        }
        .resume()
    }
}
