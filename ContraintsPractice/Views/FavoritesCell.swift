//
//  FavoritesCell.swift
//  ContraintsPractice
//
//  Created by Gonzalo Birrueta on 2/20/20.
//  Copyright © 2020 Gonzalo Birrueta. All rights reserved.
//

import UIKit

class FavoritesCell: UICollectionViewCell{
    
    let parentStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.spacing = 10
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.distribution = .fill
        return stackView
    }()
    
    let childStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.spacing = 10
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.distribution = .fill
        return stackView
    }()
    
    let itemName: UILabel = {
        let name = UILabel()
        name.font = UIFont(name: "AvenirNext-Bold", size: 20)
        name.textColor = UIColor(red:0.29, green:0.29, blue:0.29, alpha:1.0)
        name.translatesAutoresizingMaskIntoConstraints = false
        return name
    }()
    
    let itemType: UILabel = {
        let type = UILabel()
        type.font = UIFont(name: "AvenirNext-Light", size: 15)
        type.textColor = UIColor(red:0.29, green:0.29, blue:0.29, alpha:1.0)
        type.translatesAutoresizingMaskIntoConstraints = false
        return type
    }()
    
    
    
    let itemImage: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.contentMode = .scaleAspectFit
        return image
    }()
    
    override init(frame: CGRect) {
        super.init(frame: .zero)

        contentView.addSubview(parentStackView)
        setUpChildStack()
        parentStackView.widthAnchor.constraint(equalTo:  contentView.widthAnchor).isActive = true
        parentStackView.heightAnchor.constraint(equalTo:  contentView.heightAnchor).isActive = true
        parentStackView.centerXAnchor.constraint(equalTo:  contentView.centerXAnchor).isActive = true
        parentStackView.centerYAnchor.constraint(equalTo:  contentView.centerYAnchor).isActive = true
        
        parentStackView.addArrangedSubview(itemImage)
        itemImage.widthAnchor.constraint(equalTo: parentStackView.widthAnchor, multiplier: 0.25).isActive = true
        
        parentStackView.addArrangedSubview(childStackView)
    }
    
    func setUpChildStack(){
        childStackView.addArrangedSubview(itemName)
        childStackView.addArrangedSubview(itemType)
    }
    
    func set(image: String, name: String, type: String){
        itemImage.image = UIImage(named: image)
        itemName.text = name
        itemType.text = type
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
