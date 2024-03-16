//
//  ContentView.swift
//  BlackJack
//
//  Created by Nigel Krajewski on 3/7/24.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @Environment(\.modelContext) private var modelContext
    @Query private var results: [Result]

    var body: some View {
        TableView()
    }

    private func addItem() {
        withAnimation {
            let newItem = Result(timestamp: Date(), win: .random())
            modelContext.insert(newItem)
        }
    }

    private func deleteItems(offsets: IndexSet) {
        withAnimation {
            for index in offsets {
                modelContext.delete(results[index])
            }
        }
    }
}

#Preview {
    ContentView()
        .modelContainer(for: Result.self, inMemory: true)
}
