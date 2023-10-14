//
//  ContentView.swift
//  iExpense
//
//  Created by James on 14/10/2023.
//

import SwiftUI

class User: ObservableObject { // must be type observable
    @Published var firstName = "Bilbo"
    @Published var lastName = "Baggins"
} // published to be seen by StateObject

struct UserContentView: View {
    @StateObject var user = User()
        // allows published state changes in object to be seen
    
    var body: some View {
        VStack {
            Text("Your name is \(user.firstName) \(user.lastName)")
            // $ is a two way binding
            TextField("First name", text: $user.firstName)
            TextField("Last name", text: $user.lastName)
        }
        .padding()
    }
}

struct SecondView: View {
    @Environment(\.dismiss) var dismiss
    
    let name: String
    
    var body: some View {
        VStack {
            Text("Hello \(name)!")
            Button("Dismiss") {
                dismiss()
            }
        }
    }
}

struct FirstView: View {
    @State private var showingSheet = false
    
    var body: some View {
        Button("Show sheet") {
            showingSheet.toggle()
        }
        .sheet(isPresented: $showingSheet) {
            SecondView(name: "James")
        }
    }
}

struct DeleteContent: View {
    @State private var numbers = [Int]()
    @State private var currentNumber = 1
    
    var body: some View {
        NavigationView {
            VStack {
                List {
                    ForEach(numbers, id: \.self) {
                        Text("Row \($0)")
                    }
                    .onDelete(perform: removeRows)
                }
                
                Button("Add Number") {
                    numbers.append(currentNumber)
                    currentNumber += 1
                }
            }
            .navigationTitle("onDelete()")
            .toolbar {
                EditButton()
            }
        }
    }
    
    func removeRows(at offsets: IndexSet) {
        numbers.remove(atOffsets: offsets)
    }
}

struct SavingDataView: View {
    @State private var tapCount = UserDefaults.standard.integer(forKey: "Tap")
    
    var body: some View {
        Button("Tap count: \(tapCount)") {
            tapCount += 1
            UserDefaults.standard.set(tapCount, forKey: "Tap")
        }
    }
}

struct User2: Codable {
    let firstName: String
    let lastName: String
}

struct ContentView: View {
    @State private var user = User2(firstName: "James", lastName: "Boblo")
    
    var body: some View {
        Button("Save user") {
            let encoder = JSONEncoder()
            
            // data is datatype called 'Data'
            if let data = try? encoder.encode(user) {
                UserDefaults.standard.set(data, forKey: "UserData")
            }
        }
    }
}

#Preview {
    ContentView()
}
