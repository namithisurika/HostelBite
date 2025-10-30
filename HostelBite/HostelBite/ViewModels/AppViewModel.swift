//
//  AppViewModel.swift
//  HostelBite
//
//  Created by Sithum Raigamage on 2025-10-30.
//


//
//  AppViewModel.swift
//  HostelBite
//

import Foundation
import SwiftData
import SwiftUI
internal import Combine

/// Main view model handling roommates, assignments, and persistence
@MainActor
class AppViewModel: ObservableObject {
    
    @Published var roommates: [Member] = []
    @Published var assignments: [Assignment] = []

    let context: ModelContext

    init(context: ModelContext) {
        self.context = context
        loadData()
    }

    func addRoommate(name: String) {
        let newMember = Member(name: name)
        context.insert(newMember)
        saveData()
        roommates.append(newMember)
    }

    func loadData() {
        let fetch = FetchDescriptor<Member>()
        roommates = (try? context.fetch(fetch)) ?? []
    }

    func saveData() {
        do {
            try context.save()
        } catch {
            print("❌ Failed to save: \(error)")
        }
    }
}
