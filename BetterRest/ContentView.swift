//
//  ContentView.swift
//  BetterRest
//
//  Created by Mohit Sengar on 18/11/25.
//

import SwiftUI

struct ContentView: View {
    @State private var sleepAmount: Double = 8.00
    @State private var wakeUp = Date.now
    
    var body: some View {
        VStack {
            Text("Learning").font(.largeTitle)
                .foregroundStyle(.blue)
            
            // Learning
            VStack{
                Stepper("Sleep Amount", value: $sleepAmount, in: 4...12, step: 0.25)
                
                Text("Sleep Amount \(sleepAmount.formatted()) hours").font(.title)
                
                DatePicker("Choose the Date - ", selection: $wakeUp)
                
                DatePicker("Choose the Date - ", selection: $wakeUp, displayedComponents: .hourAndMinute)
                
                DatePicker("", selection: $wakeUp)
                
                DatePicker("Choose the Date -", selection: $wakeUp) .labelsHidden()
                
                DatePicker("Please enter a date", selection: $wakeUp, in: Date.now...)
                DatePicker("Please enter a date", selection: $wakeUp, in: ...Date.now)
                
                Text("Current Selected Date - \(wakeUp.formatted())").font(.title)
                
                Text(Date.now, format: .dateTime.hour().minute())
                
                Text(Date.now, format: .dateTime.day().month().year())
                
                Text(Date.now.formatted(date: .long, time: .shortened))
                
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
