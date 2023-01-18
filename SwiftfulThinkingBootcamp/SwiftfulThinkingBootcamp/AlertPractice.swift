//
//  AlertPractice.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Rifqi Muhammad Aziz on 18/01/23.
//

import SwiftUI

struct AlertPractice: View {
    
    @State var showAlert: Bool = false
    @State var alertType: MyAlerts? = nil
//    @State var alertTitle: String = ""
//    @State var alertMessage: String = ""
    @State var backgroundColor: Color = Color.green
    
    enum MyAlerts {
        case success
        case error
    }
    
    var body: some View {
        ZStack {
            backgroundColor.ignoresSafeArea()
            
            VStack {
                Button("Show Alert 1") {
//                    alertTitle = "Connection Error"
//                    alertMessage = "Failed to connect Firebase"
                    alertType = .error
                    showAlert.toggle()
                }
                Button("Show Alert 2") {
//                    alertTitle = "Connection Ok"
//                    alertMessage = "Successfully connect to Firebase"
                    alertType = .success
                    showAlert.toggle()
                }
            }
            .alert(isPresented: $showAlert, content: {
                getAlert()
            })
        }
    }
    
    // return is Alert
    func getAlert() -> Alert {
//        return Alert(
//            title: Text("This is the title"),
//            message: Text("Description of the error"),
//            primaryButton: .destructive(Text("DELETE"), action: {
//                backgroundColor = Color.red
//            }),
//            secondaryButton: .cancel(Text("Batal"), action: {
//                backgroundColor = Color.green
//            })
////        )
//        return Alert(
//            title: Text(alertTitle),
//            message: Text(alertMessage),
//            dismissButton: .default(Text("OK")))
        switch alertType {
        case .error:
            return Alert(title: Text("Connection Error"))
        case .success:
            return Alert(
                title: Text("Connection Ok"),
                message: nil,
                dismissButton: .default(
                    Text("OK"),
                    action: {
                        backgroundColor = Color.brown
            }))
        default:
            return Alert(title: Text("ERROR"))
        }
    }
}

struct AlertPractice_Previews: PreviewProvider {
    static var previews: some View {
        AlertPractice()
    }
}
