//
//  DotaWidgetAppApp.swift
//  DotaWidgetApp
//
//  Created by Mike Ulanov on 12.02.2024.
//

import SwiftUI

@main
struct DotaWidgetAppApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
