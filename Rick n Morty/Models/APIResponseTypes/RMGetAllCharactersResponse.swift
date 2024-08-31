//
//  RMGetAllCharactersResponse.swift
//  Rick n Morty
//
//  Created by Emmanuel Anene on 31/08/2024.
//

import Foundation

struct RMGetAllCharactersResponse: Codable {
    struct Info: Codable {
        let count: Int
        let pages: Int
        let next: String?
        let prev: String?
    }
    
    let info: Info
    let results: [RMCharacter]
}
