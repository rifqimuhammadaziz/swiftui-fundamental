//
//  TogglePractice.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Rifqi Muhammad Aziz on 19/01/23.
//

import SwiftUI

struct TogglePractice: View {
    
    @State var toggleIsOn: Bool = false
    
    var body: some View {
        VStack {
            HStack {
                Text("Status: ")
                Text(toggleIsOn ? "Online" : "Offline")
            }
            .font(.title)
            
            Toggle(
                isOn: $toggleIsOn,
                label: {
                    Text("Change Status")
                }
            )
            .toggleStyle(SwitchToggleStyle(tint: Color.purple))
            
            Spacer()
        }
        .padding(.horizontal, 100)
    }
}

struct TogglePractice_Previews: PreviewProvider {
    static var previews: some View {
        TogglePractice()
    }
}
