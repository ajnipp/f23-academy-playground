//
//  RosterItem.swift
//  f23-academy-playground
//
//  Created by AlecNipp on 10/26/23.
//

import Foundation

struct RosterItem: Identifiable {
    var name: String
    var id = UUID()
}

extension RosterItem {
    static var example: RosterItem {
       RosterItem(name: "Jimbo")
    }
}
