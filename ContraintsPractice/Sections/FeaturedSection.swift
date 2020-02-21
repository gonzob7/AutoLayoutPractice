//
//  FeaturedSection.swift
//  ContraintsPractice
//
//  Created by Gonzalo Birrueta on 2/20/20.
//  Copyright © 2020 Gonzalo Birrueta. All rights reserved.
//

import UIKit

struct FeaturedSection: Section {
    
    
    let data = [
        Cell(title: "Treats", image: UIImage(named: "treat")!),
        Cell(title: "Toys", image: UIImage(named: "toy")!),
        Cell(title: "Food", image: UIImage(named: "food")!),
        Cell(title: "Grooming", image: UIImage(named: "grooming")!),
        Cell(title: "Lifestyle", image: UIImage(named: "lifestyle")!),
        Cell(title: "Vaccines", image: UIImage(named: "vaccines")!),
        Cell(title: "Accessories", image: UIImage(named: "accessories")!),
        Cell(title: "Housing", image: UIImage(named: "housing")!)
    ]
    
    let numberOfItems = 8
    
    func layoutSection() -> NSCollectionLayoutSection? {
        // TODO: Step 1
        let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(0.95), heightDimension: .fractionalHeight(0.80))
        
        // TODO: Step 2
        let item = NSCollectionLayoutItem(layoutSize: itemSize)
        
        // TODO:Step 3: Try using the absolute values, around 200 by 300
        let groupSize = NSCollectionLayoutSize(widthDimension: .absolute(200), heightDimension: .absolute(300))
        
        let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitems: [item])
        
        
        // TODO: Step 5
        let section = NSCollectionLayoutSection(group: group)
        section.orthogonalScrollingBehavior = .continuous
        section.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 10)
        return section
    }
    
    func configureCell(collectionView: UICollectionView, indexPath: IndexPath) -> UICollectionViewCell {
        
        collectionView.dequeueReusableCell(withReuseIdentifier: String(describing: CustomCell.self), for: indexPath)
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CustomCell", for: indexPath) as! CustomCell
        cell.backgroundColor = UIColor(red:0.44, green:0.43, blue:0.98, alpha:1.0)
        cell.layer.cornerRadius = 10
        cell.data = self.data[indexPath.row]
        return cell
        
    }
    
}
