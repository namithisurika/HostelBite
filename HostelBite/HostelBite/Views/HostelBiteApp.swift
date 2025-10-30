//
//  HostelBiteApp.swift
//  HostelBite
//
//  Created by Sithum Raigamage on 2025-10-28.
//

import SwiftUI
import SwiftData

@main
struct HostelBiteApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(context: HostelBiteModelContainer.shared.mainContext)
        }
        .modelContainer(HostelBiteModelContainer.shared)
    }
}
