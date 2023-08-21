//
//  ContentView.swift
//  WeSplit
//
//  Created by James on 21/08/2023.
//ss

import SwiftUI

struct ContentView: View {
    @State private var tapCount = 0
    @State private var name = " "
    let students = ["Harry", "Hermione", "Ron"]
    @State private var selectedStudent = "Harry"
    
    var body: some View {
        NavigationView {
            Form {
                Section {
                    Text("Hello, world!")
                    TextField("Enter your name", text: $name)
                    Text("Your name is \(name)")
                }
                Button("Tap Count: \(tapCount)") {
                    tapCount += 1
                }
                Section {
                    Picker("Select your student", selection: $selectedStudent) {
                        ForEach(students, id: \.self) {
                            Text($0)
                        }
                    }
                }
            }
            .navigationTitle("SwiftUI")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

