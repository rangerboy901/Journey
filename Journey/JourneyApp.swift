//
//  JourneyApp.swift
//  Journey
//
//  Created by Joseph  DeWeese on 2/13/23.
//

import SwiftUI

@main
struct JourneyApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
