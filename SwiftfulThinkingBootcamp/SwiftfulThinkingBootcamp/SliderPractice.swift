//
//  SliderPractice.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Rifqi Muhammad Aziz on 21/01/23.
//

import SwiftUI

struct SliderPractice: View {
    
    @State var sliderValue: Double = 3
    @State var color: Color = Color.red
    
    var body: some View {
        VStack {
            Text("Rating")
                .font(.headline)
            Text(
                //                "\(sliderValue)"
                String(format: "%.0f", sliderValue)
            )
            .foregroundColor(color)
            
            //            Slider(value: $sliderValue)
            //            Slider(value: $sliderValue, in: 1...5)
            //            Slider(value: $sliderValue, in: 1...5, step: 1.0)
            Slider(
                value: $sliderValue,
                in: 1...5, step: 1.0,
                onEditingChanged: { (_) in
                    color = Color.green
                },
                minimumValueLabel:
                    Text("1")
                    .font(.largeTitle)
                    .foregroundColor(.green),
                maximumValueLabel:
                    Text("5")
                    .font(.largeTitle)
                    .foregroundColor(.green),
                label: {
                    Text("Title")
                }
            )
            .tint(.red)
        }
    }
}

struct SliderPractice_Previews: PreviewProvider {
    static var previews: some View {
        SliderPractice()
    }
}
