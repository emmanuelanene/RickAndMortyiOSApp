//
//  RMLocation.swift
//  Rick n Morty
//
//  Created by Emmanuel Anene on 30/08/2024.
//

import Foundation

struct RMLocation: Codable {
    let id: Int
    let name: String
    let type: String
    let dimension: String
    let residents: [String]
    let url: String
    let created: String
}
