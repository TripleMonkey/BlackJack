//
//  BlackJackApp.swift
//  BlackJack
//
//  Created by Nigel Krajewski on 3/7/24.
//

import SwiftUI
import SwiftData

@main
struct BlackJackApp: App {
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            Result.self,
        ])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)

        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(sharedModelContainer)
    }
}
