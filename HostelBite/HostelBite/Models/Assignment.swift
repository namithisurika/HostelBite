//
//  Assignment.swift
//  HostelBite
//
//  Created by Sithum Raigamage on 2025-10-29.
//

import Foundation
import SwiftData

/// Represents daily assignments
@Model
final class Assignment {
    @Attribute(.unique) var id: UUID
    var date: Date
    var meal: Meal
    var roles: [Responsibility: UUID] // maps roles to Member IDs

    init(date: Date, meal: Meal, roles: [Responsibility: UUID]) {
        self.id = UUID()
        self.date = date
        self.meal = meal
        self.roles = roles
    }
}
