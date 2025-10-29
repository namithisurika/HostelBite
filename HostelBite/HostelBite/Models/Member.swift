//
//  Member.swift
//  HostelBite
//
//  Created by Sithum Raigamage on 2025-10-28.
//

import Foundation

//Member class (roommate)
struct Member: Identifiable,Codable {
    
    let id: UUID = UUID();
    let name: String;
    
    init(name: String) {
        self.name = name
    }
}
