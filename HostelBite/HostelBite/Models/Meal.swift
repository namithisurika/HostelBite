//
//  Meal.swift
//  HostelBite
//
//  Created by Sithum Raigamage on 2025-10-28.
//

import Foundation

struct Meal:Identifiable,Codable {
    
    var id: UUID = UUID()
    var name: String
    var ingredients: [String] // used for grocery list
    
    init(name: String, ingredients: [String] = []) {
        self.name = name
        self.ingredients = ingredients
    }
}
