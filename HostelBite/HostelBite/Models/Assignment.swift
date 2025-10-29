//
//  Assignment.swift
//  HostelBite
//
//  Created by Sithum Raigamage on 2025-10-29.
//

import Foundation

/// Assignment for a single day
struct Assignment: Identifiable,Codable {
    var id: UUID = UUID()
    var date: Date
    var meal: Meal
    /// map from responsibility -> member id (UUID string)
    var roles: [Responsibility: UUID]
    
    init(date: Date, meal: Meal, roles: [Responsibility: UUID]) {
        self.date = date
        self.meal = meal
        self.roles = roles
    }
}
