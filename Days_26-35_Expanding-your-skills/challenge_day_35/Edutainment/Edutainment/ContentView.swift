//
//  ContentView.swift
//  Edutainment
//
//  Created by James on 07/10/2023.
//

import SwiftUI

struct GameView: View {
    @State private var question = 1
    @State private var userAnswer = 0
    
    @Binding var chosenTimesTable: Int
    @Binding var noOfQuestions: Int
    
    var questionTimesTable: [Int] = randomQuestionGen()  // TO FIX
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Question \(question)")
                Text("What is \(questionTimesTable[question]) x \(chosenTimesTable) ?")
                
                TextField("Answer", value: $userAnswer, format: .number)
                
                if userAnswer == (questionTimesTable[question] * chosenTimesTable) {
                    Text("Correct")
                } else {
                    Text("Incorrect")
                }
            }
        }
    }
    
    func randomQuestionGen() -> [Int] {
        var randomTimesTable = [Int]()
        
        for _ in 1...12 {
            randomTimesTable.append(Int.random(in: 1...12))
        }
        
        return randomTimesTable
    }
}

struct ContentView: View {
    @State private var chosenTimesTable = 2
    @State private var noOfQuestions = 10
    @State private var currentQuestion = 1
    
    var body: some View {
        NavigationView {
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
                HStack {
                    Image(systemName: "questionmark.circle")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 30, height: 30)
                        .padding()
                    
                    Stepper("\(noOfQuestions) Questions", value: $noOfQuestions, in: 2...12)
                        .fixedSize()
                }
                NavigationLink {
                    GameView()
                } label: {
                    Text("Play Game!")
                }
                .contentShape(RoundedRectangle(cornerRadius: 70))
                .foregroundColor(.blue)
            }
            .navigationTitle("Edutainment")
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
