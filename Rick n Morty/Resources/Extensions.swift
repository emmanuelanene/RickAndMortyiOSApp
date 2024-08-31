//
//  Extensions.swift
//  Rick n Morty
//
//  Created by Emmanuel Anene on 31/08/2024.
//

import Foundation
import UIKit

extension UIView {
    func addSubviews(_ views: UIView...) {
        views.forEach ({
            addSubview($0)
        })
    }
}
