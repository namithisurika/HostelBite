//
//  Member.swift
//  HostelBite
//
//  Created by Sithum Raigamage on 2025-10-28.
//

import Foundation
import SwiftData

/// Represents a roommate in the hostel
@Model
final class Member {
    @Attribute(.unique) var id: UUID
    var name: String

    init(name: String) {
        self.id = UUID()
        self.name = name
    }
}
