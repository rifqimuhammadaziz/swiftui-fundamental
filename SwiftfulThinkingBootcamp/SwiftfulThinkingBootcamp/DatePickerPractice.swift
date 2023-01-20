//
//  DatePickerPractice.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Rifqi Muhammad Aziz on 20/01/23.
//

import SwiftUI

struct DatePickerPractice: View {
    
    @State var selectedDate: Date = Date() // set to current date
    let startingDate: Date = Calendar.current.date(from: DateComponents(year: 2018)) ?? Date()
    let endingDate: Date = Date()
    
    var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .long
        formatter.timeStyle = .short
        return formatter
    }
    
    var body: some View {
        VStack {
            Text("Selected Date")
            Text(dateFormatter.string(from: selectedDate))
                .font(.title)
            
    //        DatePicker("Select a Date",selection: $selectedDate)
    //        DatePicker("Select a Date", selection: $selectedDate, displayedComponents: [.date])
            DatePicker("Select a Date", selection: $selectedDate, in: startingDate...endingDate, displayedComponents: [.date])
                .tint(.white)
                .datePickerStyle(
                    CompactDatePickerStyle()
                )
                .padding()
                .background(.green)
                .cornerRadius(10)
                .foregroundColor(.white)
                .padding(50)
        }
    }
}

struct DatePickerPractice_Previews: PreviewProvider {
    static var previews: some View {
        DatePickerPractice()
    }
}
