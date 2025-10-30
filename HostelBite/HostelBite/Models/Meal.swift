//
//  Meal.swift
//  HostelBite
//
//  Created by Sithum Raigamage on 2025-10-28.
//

import Foundation
import SwiftData

/// Represents a meal and its ingredients
@Model
final class Meal {
    @Attribute(.unique) var id: UUID
    var name: String
    var ingredients: [String]

    init(name: String, ingredients: [String]) {
        self.id = UUID()
        self.name = name
        self.ingredients = ingredients
    }
}
