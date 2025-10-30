//
//  Responsibility.swift
//  HostelBite
//
//  Created by Sithum Raigamage on 2025-10-28.
//

import Foundation

/// Defines who does what
enum Responsibility: String, Codable, CaseIterable, Identifiable {
    case cook
    case buyer
    case orderer

    var id: String { rawValue }

    var title: String {
        switch self {
        case .cook: return "Cook"
        case .buyer: return "Buyer"
        case .orderer: return "Order Food"
        }
    }
}



