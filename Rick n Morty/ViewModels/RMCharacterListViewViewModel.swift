//
//  CharacterListViewViewModel.swift
//  Rick n Morty
//
//  Created by Emmanuel Anene on 31/08/2024.
//

import UIKit

final class RMCharacterListViewViewModel: NSObject {
    func fetchCharacter() {
        RMService.shared.execute( .listCharacterRequest, expecting: RMGetAllCharactersResponse.self) { result in
                switch result {
                case .success(let model):
                    // print(String(describing: model))
                    print("Total: " + String(model.info.pages))
                    print("Page result count: " + String(model.results.count))
                    
                    
                case .failure(let error):
                    print(String(describing: error))
                }
            }
    }
}


extension RMCharacterListViewViewModel: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 20
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: RMCharacterCollectionViewCell.cellIdentifier, for: indexPath)
        cell.backgroundColor = .systemGreen
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let bounds = UIScreen.main.bounds
        let width = (bounds.width-30)/2
        return CGSize(
            width: width,
            height: width * 1.5
        )
    }
}
