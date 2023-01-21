//
//  DocumentationPractice.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Rifqi Muhammad Aziz on 21/01/23.
//

import SwiftUI

struct DocumentationPractice: View {
    
    // MARK: PROPERTIES
    
    @State var data: [String] = [
        "Grape", "Apple", "Orange", "Banana"
    ]
    @State var showAlert: Bool = false
    
    // MARK: BODY
    
    /*
     Things to do:
     1. Fix title
     2. Fix alert
     */
    
    var body: some View {
        NavigationStack { // START: NAV
            ZStack { // START: ZStack
                // background
                Color.red.ignoresSafeArea()
                
                // foreground
                foregroundLayer
                .navigationTitle("Documentation")
                .toolbar {
                    ToolbarItem(placement: .navigationBarLeading) {
                        Button("ALERT", action: {
                            showAlert.toggle()
                        })
                    }
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button("ALERT", action: {
                            showAlert.toggle()
                        })
                    }
                }
                .alert(isPresented: $showAlert, content: {
                    getAlert(text: "This is Alert")
                })
            } // END: ZStack
        } // END: NAV
    }
    
    /// This is the foreground layer that holds a scrollview
    private var foregroundLayer: some View {
        ScrollView { // START: SCROLLV
            Text("Xenosty")
            ForEach(data, id: \.self) { fruit in
                Text(fruit)
                    .font(.headline)
            }
        } // END: SCROLLV
    }
    
    // MARK: FUNCTION
    
    /// Get an Alert with a spesific title
    /// ```
    /// getAlert(text: "Hello, Xenosty!") -> Alert(title: Text("Hello, Xenosty!")
    /// ```
    /// - Warning: There is no additional message in this Alert
    /// - Parameter text: This is the title for the alert
    /// - Returns: Returns an alert with a title
    func getAlert(text: String) -> Alert {
        return Alert(title: Text(text))
    }
}

// MARK: PREVIEW

struct DocumentationPractice_Previews: PreviewProvider {
    static var previews: some View {
        DocumentationPractice()
    }
}
