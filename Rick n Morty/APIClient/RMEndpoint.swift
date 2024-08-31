//
//  RMEndpoint.swift
//  Rick n Morty
//
//  Created by Emmanuel Anene on 30/08/2024.
//

import Foundation

/// Represents unique API endpoints
@frozen enum RMEndpoint: String {
    /// Endpoint to get character info
    case character
    /// Endpoint to get location info
    case location
    /// Endpoint to get episode info
    case episode
}
