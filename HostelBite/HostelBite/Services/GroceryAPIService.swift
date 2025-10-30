//
//  GroceryAPIService.swift
//  HostelBite
//
//  Created by Sithum Raigamage on 2025-10-30.
//

import Foundation


final class GroceryAPIService {
    
    static let shared = GroceryAPIService()

    private init() {}

    func fetchGroceries() async throws -> [GroceryItem] {
        // Simulate a delay and fetch from a mock URL
        let url = URL(string: "https://mockapi.io/groceries")!
        let (data, _) = try await URLSession.shared.data(from: url)
        return try JSONDecoder().decode([GroceryItem].self, from: data)
    }
}
