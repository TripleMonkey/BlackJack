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
        NavigationSplitView {
            List {
                ForEach(results) { result in
                    NavigationLink {
                        Text("At \(result.timestamp, format: Date.FormatStyle(date: .numeric, time: .standard)) you \(result.win ? "won!" : "lost.")")
                    } label: {
                        HStack {
                            Text(result.timestamp, format: Date.FormatStyle(date: .numeric, time: .shortened))
                            Spacer()
                            Text(result.win ? "WIN":"LOSE")
                                .foregroundStyle(Color(result.win ? Color.green:Color.red))
                        }
                    }
                }
                .onDelete(perform: deleteItems)
            }
#if os(macOS)
            .navigationSplitViewColumnWidth(min: 180, ideal: 200)
#endif
            .toolbar {
#if os(iOS)
                ToolbarItem(placement: .navigationBarTrailing) {
                    EditButton()
                }
#endif
                ToolbarItem {
                    Button(action: addItem) {
                        Label("Add Item", systemImage: "plus")
                    }
                }
            }
        } detail: {
            Text("Select an item")
        }
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
