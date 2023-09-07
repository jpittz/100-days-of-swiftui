//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by James on 31/08/2023.
//

import SwiftUI

// not related to app, but prior lesson
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

struct FlagImage: View {
    var imageName: String
    
    var body: some View {
        Image(imageName)
            .renderingMode(.original)
            .clipShape(Capsule())
            .shadow(radius: 5)
    }
}

struct ContentView: View {
    @State private var showingScore = false
    @State private var showingRestart = false
    @State private var scoreTitle = ""
    @State private var score = 0
    @State private var questionCount = 0
    
    @State private var countries = ["Estonia", "France", "Germany", "Ireland", "Italy", "Nigeria", "Poland", "Russia", "Spain", "UK", "US"].shuffled()
    @State private var correctAnswer = Int.random(in: 0...2)
    
    var body: some View {
        ZStack {
            RadialGradient(stops: [
                .init(color: Color(red: 0.1, green: 0.2, blue: 0.45), location: 0.3),
                .init(color: Color(red: 0.76, green: 0.15, blue: 0.26), location: 0.3)
            ], center: .top, startRadius: 200, endRadius: 700)
            .ignoresSafeArea()
            
            VStack {
                Spacer()
                
                Text("Guess the Flag")
                    .font(.largeTitle.bold())
                    .foregroundColor(.white)
                
                VStack(spacing: 15) {
                    VStack {
                        Text("Tap the flag of")
                            .foregroundStyle(.white)
                            .font(.subheadline.weight(.heavy))
                        Text(countries[correctAnswer])
                            .foregroundStyle(.white)
                            .font(.largeTitle.weight(.semibold))
                    }
                    
                    ForEach(0..<3) { number in
                        Button {
                            flagTapped(number)
                        } label: {
                            FlagImage(imageName: countries[number])
                        }
                    }
                }
                .frame(maxWidth: .infinity)
                .padding(.vertical, 20)
                .background(AngularGradient(gradient: Gradient(colors: [.red, Color(red: 0.1, green: 0.2, blue: 0.45), .blue, Color(red: 0.76, green: 0.15, blue: 0.26), .red]), center: .center))
                .clipShape(RoundedRectangle(cornerRadius: 20))
                
                Spacer()
                Spacer()
                
                Text("Score: \(score)/\(questionCount)")
                    .foregroundColor(.white)
                    .font(.title.bold())
                
                Spacer()
            }
            .padding()
        }
        .alert(scoreTitle, isPresented: $showingScore) {
            Button("Continue", action: askQuestion)
        } message: {
            Text("Your score is \(score)")
        }
        .alert("Game Over", isPresented: $showingRestart) {
            Button("Restart", action: restartGame)
        } message: {
            Text("Your final score is \(score)/\(questionCount)")
        }
        

    }
    
    func flagTapped(_ number: Int) {
        
        questionCount += 1
        
        if number == correctAnswer {
            scoreTitle = "Correct"
            score += 1
        } else {
            scoreTitle = "Wrong, that is the flag of \(countries[number])"
        }
        
        showingScore = true
        
        if questionCount < 8 {
            showingRestart = false
        } else {
            showingScore = false
            showingRestart = true
        }
    }
    
    func askQuestion() {
        countries.shuffle()
        correctAnswer =  Int.random(in: 0...2)
    }
    
    func restartGame() {
        score = 0
        questionCount = 0
        askQuestion()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
