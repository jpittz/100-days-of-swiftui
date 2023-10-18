//
//  ContentView.swift
//  Moonshot
//
//  Created by James on 18/10/2023.
//

import SwiftUI

struct GeoView: View {
    var body: some View {
        GeometryReader { geo in
            Image("Example")
                .resizable()
                .scaledToFit()
                .frame(width: geo.size.width * 0.8, height: 300)
                .frame(width: geo.size.width, height: geo.size.height)
        }
    }
}

struct MutltipleView: View {
    var body: some View {
        NavigationView {
            NavigationLink {
                Text("Detail View")
            } label: {
                Text("Hello, world!")
                    .padding()
            }
            .navigationTitle("SwiftUI")
        }
    }
}

struct User: Codable {
    let name: String
    let address: Address
}

struct Address: Codable {
    let street: String
    let city: String
}

struct JSONDecoderView: View {
    var body: some View {
        Button("Decode JSON") {
            let input = """
            {
                "name": "Taylor Swift",
                "address": {
                    "street": "555, Taylor Swift Avenue",
                    "city": "Nashville"
                }
            }
            """
            
            let data = Data(input.utf8)
            
            if let user = try? JSONDecoder().decode(User.self, from: data) {
                print(user.address.street)
            }
        }
    }
}

struct ContentView: View {
    let layout = [
        GridItem(.adaptive(minimum: 80))
    ]
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: layout) {
                ForEach(0..<1000) {
                    Text("Item \($0)")
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
