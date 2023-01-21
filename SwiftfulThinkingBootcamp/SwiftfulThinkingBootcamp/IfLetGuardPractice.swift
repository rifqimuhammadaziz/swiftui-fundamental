//
//  IfLetGuardPractice.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Rifqi Muhammad Aziz on 21/01/23.
//

import SwiftUI

struct IfLetGuardPractice: View {
    
    @State var currentUserID: String? = nil
    @State var displayText: String? = nil
    @State var isLoading: Bool = false
    
    var body: some View {
        NavigationStack {
            VStack {
                Text("Guard the conditional statements")
                
                // check is displaytext exists, then create new var
                if let text = displayText {
                    Text(text)
                        .font(.title)
                }
                
//                Do not use this, because it will crash
//                Do not force unwrap values
//                Text(displayText!)
                
                if isLoading {
                    ProgressView()
                }
                
                Spacer()
            }
            .navigationTitle("Safe Code")
            .onAppear {
                loadData2()
            }
        }
    }
    
    func loadData() {
        // if there is a currentUserID, then create new var & run code on bracket
        if let userID = currentUserID {
            isLoading = true
            DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                displayText = "User id: \(userID)"
                isLoading = false
            }
        } else { // no userID
            displayText = "Error. There is no user id."
        }
    }
    
    func loadData2() {
        guard let userID = currentUserID else {
            displayText = "Error. There is no user id."
            return
        }
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            displayText = "User id: \(userID)"
            isLoading = false
        }
    }
}

struct IfLetGuardPractice_Previews: PreviewProvider {
    static var previews: some View {
        IfLetGuardPractice()
    }
}
