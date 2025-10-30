//
//  HostelBiteModelContainer.swift
//  HostelBite
//
//  Created by Sithum Raigamage on 2025-10-30.
//

import Foundation
import SwiftData

/// Sets up a shared SwiftData container for persistent models
@MainActor
class HostelBiteModelContainer {
    static let shared = try! ModelContainer(
        for: Member.self,
        Meal.self,
        Assignment.self
    )
}
