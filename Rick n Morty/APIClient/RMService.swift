//
//  RMService.swift
//  Rick n Morty
//
//  Created by Emmanuel Anene on 30/08/2024.
//

import Foundation

final class RMService {
    static let shared = RMService()
    
    private init() {}
    
    public func execute(_ request: RMRequest, completion: @escaping () -> Void) {}
}
