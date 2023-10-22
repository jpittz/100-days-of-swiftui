//
//  ContentView.swift
//  Moonshot
//
//  Created by James on 18/10/2023.
//

import SwiftUI

struct ContentView: View {
    let astronauts: [String: Astronaut] = Bundle.main.decode("astronauts.json")
    let missions: [Mission] = Bundle.main.decode("missions.json")
    
    @State private var showingGrid = true
    
    var body: some View {
        NavigationView {
            ScrollView {
                if showingGrid == true {
                    GridLayout(astronauts: astronauts, missions: missions)
                } else {
                    ListLayout(astronauts: astronauts, missions: missions)
                }
            }
            .navigationTitle("Moonshot")
            .background(.darkBackground)
            .preferredColorScheme(.dark)
            .toolbar {
                Button {
                    showingGrid.toggle()
                } label: {
                    if showingGrid == true {
                        Text("View as List")
                    } else {
                        Text("View as Grid")
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
