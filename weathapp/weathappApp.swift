//
//  weathappApp.swift
//  weathapp
//
//  Created by Zahra chouchane on 11/10/2022.
//

import SwiftUI

@main
struct weathappApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
