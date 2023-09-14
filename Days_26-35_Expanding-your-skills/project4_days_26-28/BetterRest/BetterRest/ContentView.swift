//
//  ContentView.swift
//  BetterRest
//
//  Created by James on 11/09/2023.
//

import CoreML
import SwiftUI

struct ContentView: View {
    @State private var sleepAmount = 8.0
    @State private var wakeUp = defaultWakeTime
    @State private var coffeeAmount = 1
    @State private var alertMessage = ""
    
    static var defaultWakeTime: Date {
        var components = DateComponents()
        components.hour = 7
        components.minute = 0
        return Calendar.current.date(from: components) ?? Date.now
    }
    
    var calculateBedtime: String {
        var idealBedTime = ""
        do {
            let config = MLModelConfiguration()
            let model = try SleepCalculator(configuration: config)
            
            let components = Calendar.current.dateComponents([.hour, .minute], from: wakeUp)
            let hour = (components.hour  ?? 0) * 60 * 60
            let minute = (components.minute ?? 0) * 60
            
            let prediction = try model.prediction(wake: Double(hour + minute), estimatedSleep: sleepAmount, coffee: Double(coffeeAmount))
            
            let sleepTime = wakeUp - prediction.actualSleep
            idealBedTime = sleepTime.formatted(date: .omitted, time: .shortened)
            
        } catch {
            idealBedTime = "Sorry, there was a problem calculating your bedtime."
        }
        
        return idealBedTime
    }

    
    var body: some View {
        NavigationView {
            Form {
                Section("When do you want to wake up?") {
                    
                    DatePicker("Please enter a time", selection: $wakeUp, displayedComponents: .hourAndMinute)
                        .labelsHidden()
                }
                
                Section("Desired amount of sleep") {
                    
                    Stepper("\(sleepAmount.formatted()) hours", value: $sleepAmount, in: 4...12, step: 0.25)
                }
                
                Section("Daily coffee intake") {
                    
                    Picker("Daily coffee intake", selection: $coffeeAmount) {
                        ForEach(1..<20) {
                            Text($0 == 1 ? "1 cup" : "\($0) cups")
                        }
                    }
                }
                
                VStack(alignment: .leading, spacing: 10) {
                    Text("Ideal Bedtime")
                        .font(.title2.bold())
                    
                    Text(calculateBedtime)
                }
            }
            .navigationTitle("BetterRest")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
