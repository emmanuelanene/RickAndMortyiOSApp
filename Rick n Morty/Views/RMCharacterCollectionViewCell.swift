//
//  RMCharacterCollectionViewCell.swift
//  Rick n Morty
//
//  Created by Emmanuel Anene on 31/08/2024.
//

import UIKit

class RMCharacterCollectionViewCell: UICollectionViewCell {
    
    
    
    static let cellIdentifier = "RMCharacterCollectionViewCell"
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.backgroundColor = .secondarySystemBackground
    }
    
    required init?(coder: NSCoder) {
        fatalError("Unsupported")
    }
    
    private func addConstraints() {
        
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
    }
    
    public func configure(with viewModel: RMCharacterCollectionViewCellViewModel) {
        
    }
}
