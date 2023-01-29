//
//  ContentView.swift
//  SwiftUI-BarChart
//
//  Created by Rifqi Muhammad Aziz on 29/01/23.
//

import SwiftUI
import Charts

struct ContentView: View {
    
    let viewMonths: [ViewMonth] = [
        .init(date: Date.from(year: 2023, month: 1, day: 1), viewCount: 23000),
        .init(date: Date.from(year: 2023, month: 2, day: 1), viewCount: 30000),
        .init(date: Date.from(year: 2023, month: 3, day: 1), viewCount: 40000),
        .init(date: Date.from(year: 2023, month: 4, day: 1), viewCount: 50000),
        .init(date: Date.from(year: 2023, month: 5, day: 1), viewCount: 60000),
        .init(date: Date.from(year: 2023, month: 6, day: 1), viewCount: 19000),
        .init(date: Date.from(year: 2023, month: 7, day: 1), viewCount: 30000),
        .init(date: Date.from(year: 2023, month: 8, day: 1), viewCount: 24000),
        .init(date: Date.from(year: 2023, month: 9, day: 1), viewCount: 90000),
        .init(date: Date.from(year: 2023, month: 10, day: 1), viewCount: 70000),
        .init(date: Date.from(year: 2023, month: 11, day: 1), viewCount: 90000),
        .init(date: Date.from(year: 2023, month: 12, day: 1), viewCount: 45000)
    ]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 4) {
            Text("Youtube Views")
            Text("Total: \(viewMonths.reduce(0, { $0 + $1.viewCount }))")
                .fontWeight(.semibold)
                .font(.footnote)
                .foregroundColor(.secondary)
                .padding(.bottom, 12)
            
            Chart {
                RuleMark(y: .value("Goal", 90000))
                    .foregroundStyle(.mint)
                    .lineStyle(StrokeStyle(lineWidth: 1, dash: [5]))
                    .annotation(alignment: .leading) {
                        Text("Goal")
                            .font(.caption)
                            .foregroundColor(.secondary)
                    }
                
                ForEach(viewMonths) { viewMonth in
                    BarMark(
                        x: .value("Month", viewMonth.date, unit: .month),
                        y: .value("Views", viewMonth.viewCount)
                    )
                    .foregroundStyle(Color.red.gradient)
                    
                }
            }
            .frame(height: 100)
            .chartXAxis {
                AxisMarks(values: viewMonths.map { $0.date }) { date in
//                    AxisGridLine()
//                    AxisTick()
                    AxisValueLabel(format: .dateTime.month(.narrow), centered: true)
                }
            }
            .chartYAxis {
                AxisMarks { mark in
                    AxisValueLabel()
                    AxisGridLine()
                }
            }
//            .chartYScale(domain: 0...150000)
//            .chartPlotStyle { plotContent in
//                plotContent
//                    .background(.mint.gradient.opacity(0.3))
//                    .border(.green, width: 3)
//            }
            
//            Chart {
//                ForEach(viewMonths) { viewMonth in
//                    BarMark(
//                        x: .value("Views", viewMonth.viewCount),
//                        y: .value("Month", viewMonth.date, unit: .month)
//                    )
//                    .foregroundStyle(Color.red.gradient)
//
//                }
//            }
//            .frame(height: 200)
            
            HStack {
                Image(systemName: "line.diagonal")
                    .rotationEffect(Angle(degrees: 45))
                    .foregroundColor(.mint)
                
                Text("Monthly Goal")
                    .foregroundColor(.secondary)
            }
            .font(.caption2)
            .padding(.leading, 4)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ViewMonth: Identifiable {
    let id = UUID()
    let date: Date // x-axis of chart
    let viewCount: Int // y-axis of chart
}

extension Date {
    static func from(year: Int, month: Int, day: Int) -> Date {
        let components = DateComponents(year: year, month: month, day: day)
        return Calendar.current.date(from: components)!
    }
}
