//
//  ContentView.swift
//  iExpense
//
//  Created by James on 14/10/2023.
//

import SwiftUI

var currencyFormatter : FloatingPointFormatStyle<Double>.Currency {
    let currencyCode = Locale.current.currency?.identifier ?? "USD"
    return FloatingPointFormatStyle<Double>.Currency(code: currencyCode)
}

struct ContentView: View {
    @StateObject var expenses = Expenses()
    @State private var showingAddExpense = false
    
    var body: some View {
        NavigationView {
            List {
                Section {
                    ForEach(expenses.items) { item in
                        if item.type == "Personal" {
                            HStack {
                                VStack(alignment: .leading) {
                                    Text(item.name)
                                        .font(.headline)
                                    Text(item.type)
                                }
                                
                                Spacer()
                                Text(item.amount, format: currencyFormatter)
                                    .foregroundColor(item.amount < 10 ? .green : item.amount < 100 ? .orange : .red)
                            }
                        }
                    }
                    .onDelete(perform: removeItems)
                } header: {
                    Text("Personal")
                }
                Section {
                    ForEach(expenses.items) { item in
                        if item.type == "Business" {
                            HStack {
                                VStack(alignment: .leading) {
                                    Text(item.name)
                                        .font(.headline)
                                    Text(item.type)
                                }
                                
                                Spacer()
                                Text(item.amount, format: currencyFormatter)
                                    .foregroundColor(item.amount < 10 ? .green : item.amount < 100 ? .orange : .red)
                            }
                        }
                    }
                    .onDelete(perform: removeItems)
                } header: {
                    Text("Business")
                }
            }
            .navigationTitle("iExpense")
            .toolbar {
                Button {
                    showingAddExpense = true
                } label: {
                    Image(systemName: "plus")
                }
            }
            .sheet(isPresented: $showingAddExpense) {
                AddView(expenses: expenses)
            }
        }
    }
    func removeItems(at offsets: IndexSet) {
        expenses.items.remove(atOffsets: offsets)
    }
}


#Preview {
    ContentView()
}
