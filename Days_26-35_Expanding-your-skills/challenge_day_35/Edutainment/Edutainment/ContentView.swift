//
//  ContentView.swift
//  Edutainment
//
//  Created by James on 07/10/2023.
//

import SwiftUI

struct ContentView: View {
    @State private var gameRunning = false
    @State private var questions = [Int]()
    @State private var chosenTimesTable = 2
    @State private var noOfQuestions = 5
    @State private var currentQuestion = 1
    
    
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "multiply.circle")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 30, height: 30)
                    .padding()
                    
                Stepper("\(chosenTimesTable) Times Table", value: $chosenTimesTable, in: 2...12)
                    .fixedSize()
            }
            Button("Play game!") {
                startGame()
            }
            .contentShape(RoundedRectangle(cornerRadius: 70))
            .foregroundColor(.blue)
        }
        .padding()
    }
    func startGame() {
        for _ in 1..<noOfQuestions {
            questions.append(Int.random(in: 1..<12))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
