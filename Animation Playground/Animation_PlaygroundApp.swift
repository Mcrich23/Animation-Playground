//
//  Animation_PlaygroundApp.swift
//  Animation Playground
//
//  Created by Morris Richman on 5/25/24.
//

import SwiftUI
import SwiftData

@main
struct Animation_PlaygroundApp: App {
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            DBAnimation.self,
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
