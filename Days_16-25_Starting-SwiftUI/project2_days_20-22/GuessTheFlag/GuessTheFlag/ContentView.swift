//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by James on 31/08/2023.
//

import SwiftUI

struct PinwheelButtonView: View {
    @State private var showingAlert = false
    
    var body: some View {
        // coloured background
        ZStack {
            AngularGradient(gradient: Gradient(colors: [.red, .yellow, .green, .blue, .purple, .red]), center: .center)
            
            // button
            Button("Show Alert") {
                showingAlert = true
            }
        }
        .alert("Important message", isPresented: $showingAlert) {
            Button("OK") { }
        }
        .buttonStyle(.borderedProminent) // makes button blue
        .tint(.pink)
        
    }
}

struct ContentView: View {
    @State private var showingAlert = false
    
    var body: some View {
        Text("Hello, world!")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
