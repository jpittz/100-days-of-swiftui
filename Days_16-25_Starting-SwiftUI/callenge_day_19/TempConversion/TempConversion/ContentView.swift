//
//  ContentView.swift
//  TempConversion
//
//  Created by James on 29/08/2023.
//

import SwiftUI

struct ContentView: View {
    @State private var inputUnit = "Celsius"
    @State private var outputUnit = "Fahrenheit"
    @State private var inputTemp = 0.0
    
    @FocusState private var tempIsFocused: Bool

    var outputTemp: Double {
        
        var cTemp = 0.0
        
        if inputUnit == "Fahrenheit" {
            cTemp = (inputTemp - 32) * 5/9
        } else if inputUnit == "Kelvin" {
            cTemp = inputTemp - 273.15
        } else {
            cTemp = inputTemp
        }

        if outputUnit == "Fahrenheit" {
            return cTemp * 9/5 + 32
        } else if outputUnit == "Kelvin" {
            return cTemp + 273.15
        } else {
            return cTemp
        }
        
    }
    
    
    
    
    let units = ["Celsius", "Fahrenheit", "Kelvin"]
    
    var body: some View {
        NavigationView {
            Form {
                Section {
                    Picker("Convert from: ", selection: $inputUnit) {
                        ForEach(units, id: \.self) {
                            Text("\($0)")
                        }
                    }
                    Picker("Convert to: ", selection: $outputUnit) {
                        ForEach(units, id: \.self) {
                            Text("\($0)")
                        }
                    }
                }
                Section {
                    TextField("Temperature: ", value: $inputTemp, format: .number)
                        .keyboardType(.decimalPad)
                        .focused($tempIsFocused)
                } header: {
                    Text(inputUnit)
                }
                Section {
                    Text(outputTemp, format: .number)
                } header: {
                    Text(outputUnit)
                }
                
            }
            .navigationTitle("WeSplit")
            .toolbar {
                ToolbarItemGroup(placement: .keyboard) {
                    Spacer()
                    Button("Done") {
                        tempIsFocused = false
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
