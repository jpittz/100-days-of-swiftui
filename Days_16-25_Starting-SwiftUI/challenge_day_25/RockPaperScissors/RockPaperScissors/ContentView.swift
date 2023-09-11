//
//  ContentView.swift
//  RockPaperScissors
//
//  Created by James on 08/09/2023.
//

import SwiftUI

struct ContentView: View {
    let moves = ["Rock", "Paper", "Scissors"]
    let moveIcons = ["🗿", "📄", "✂️"]
    let losingMoves = ["Paper", "Scissors", "Rock"]
    let winningMoves = ["Scissors", "Rock", "Paper"]
    
    @State private var shouldWin = Bool.random()
    @State private var selectedMove = Int.random(in: 0..<3)
    @State private var score = 0
    @State private var rounds = 0
    @State private var scoreTitle = ""
    @State private var showingRestart = false
    
    var body: some View {
        ZStack {
            
            LinearGradient(colors: [.yellow, .green],
                                   startPoint: .top,
                                   endPoint: .center)
                .ignoresSafeArea()

            VStack {
                Spacer()
                Text("Rock, Paper, Scissors!")
                    .foregroundColor(.primary)
                    .font(.title.bold())
                    .padding()
                    .background(.ultraThinMaterial)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                
                
                Spacer()
                
                VStack {
                    // shouldWin
                    Text("Choose option to \(shouldWin == true ? "Win" : "Lose") against \(moves[selectedMove])")
                        .multilineTextAlignment(.center)
                        .foregroundColor(.primary)
                        .font(.title2.bold())
                        .padding(.vertical, 30)
                    
                    // options
                    HStack {
                        ForEach(0..<3) { number in
                            Button {
                                playerMove(number)
                                nextRound()
                            } label: {
                                Text(moveIcons[number])
                                    .font(.system(size: 67))
                                    .frame(width: 105, height: 105)
                                    .background(.regularMaterial)
                                    .clipShape(Circle())
                                    .animation(.linear(duration: 1), value: 1.0)
                            }
                            .padding(.vertical, 20)
                        }
                    }
                }
                .frame(maxWidth: .infinity)
                .padding(.vertical, 20)
                .background(.regularMaterial)
                .clipShape(RoundedRectangle(cornerRadius: 20))
                
                // player score
                Spacer()
                Text("Score: \(score)/\(rounds)")
                    .foregroundColor(.primary)
                    .font(.title2.bold())
                    .padding()
                    .background(.ultraThinMaterial)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                
                Spacer()
            }
            .padding()
        }
        .alert("Game Over", isPresented: $showingRestart) {
            Button("Restart", action: restartGame)
        } message: {
            Text("Your final score is \(score)/\(rounds)")
        }
    }
    
    func playerMove(_ number: Int) {
        rounds += 1
        
        if shouldWin == true {
            if moves[selectedMove] == winningMoves[number] {
                score += 1
                scoreTitle = "Correct!"
            } else {
                scoreTitle = "Incorrect!"
            }
        } else {
            if moves[selectedMove] == losingMoves[number] {
                score += 1
                scoreTitle = "Correct!"
            } else {
                scoreTitle = "Incorrect!"
            }
        }
        
        if rounds < 10 {
            showingRestart = false
        } else {
            showingRestart = true
        }
    }
    
    func nextRound() {
        shouldWin = Bool.random()
        selectedMove = Int.random(in: 0..<3)
    }
    
    func restartGame() {
        score = 0
        rounds = 0
        nextRound()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
