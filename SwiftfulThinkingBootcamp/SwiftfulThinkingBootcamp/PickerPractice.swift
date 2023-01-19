//
//  PickerPractice.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Rifqi Muhammad Aziz on 19/01/23.
//

import SwiftUI

struct PickerPractice: View {
    
    @State var selection: String = "Most Recent"
    let filterOptions: [String] = [
        "Most Recent", "Most Popular", "Most Liked"
    ]
    
    // executed when this view is run
    init() {
        // set default color when selected
        UISegmentedControl.appearance().selectedSegmentTintColor = UIColor.red
        
        // define attribute
        let attributes: [NSAttributedString.Key:Any] = [
            .foregroundColor : UIColor.white
        ]
        
        // set default attributes when selected
        UISegmentedControl.appearance().setTitleTextAttributes(attributes, for: .selected)
    }
    
    var body: some View {
        //        VStack {
        //            HStack {
        //                Text("Age: ")
        //                Text(selection)
        //            }
        //
        //            Picker(
        //                selection: $selection,
        //                content: {
        //                    ForEach(18..<100) { number in
        //                        Text("\(number)")
        //                            .tag("\(number)")
        //                            .font(.headline)
        //                            .foregroundColor(.purple)
        //                    }
        //                }, label: {
        //                    Text("Picker")
        //                }
        //            )
        //            .pickerStyle(WheelPickerStyle())
        //            .background(Color.blue.opacity(0.2))
        //        }
        
        //        Form {
        //            Picker(
        //                selection: $selection,
        //                content: {
        //                    ForEach(filterOptions, id: \.self) { option in
        //                        HStack {
        //                            Text(option)
        //                            Image(systemName: "heart.fill")
        //                        }
        //                        .tag(option)
        //                    }
        //                },
        //                label: {
        //                    VStack {
        //                        Text("Filter : ")
        //                        Text(selection)
        //                    }
        //                    .font(.headline)
        //                    .foregroundColor(.white)
        //                    .padding()
        //                    .padding(.horizontal)
        //                    .background(.blue)
        //                    .cornerRadius(10)
        //                    .shadow(color: Color.blue.opacity(0.3), radius: 10, x: 0, y: 10)
        //                }
        //            )
        //            .pickerStyle(MenuPickerStyle())
        //        }
        
        Picker(
            selection: $selection,
            content: {
                ForEach(filterOptions.indices) { index in
                    Text(filterOptions[index])
                        .tag(filterOptions[index])
                }
            }, label: {
                Text("Picker")
            }
        )
        .pickerStyle(SegmentedPickerStyle())
        .padding()
        
    }
}

struct PickerPractice_Previews: PreviewProvider {
    static var previews: some View {
        PickerPractice()
    }
}
