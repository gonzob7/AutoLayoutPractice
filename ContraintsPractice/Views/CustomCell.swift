//
//  CustomCell.swift
//  ContraintsPractice
//
//  Created by Gonzalo Birrueta on 2/17/20.
//  Copyright © 2020 Gonzalo Birrueta. All rights reserved.
//

import UIKit

class CustomCell: UICollectionViewCell{
    
    var data: Cell? {
        didSet{
            guard let data = data else { return }
            image.image = data.image
            title.text = data.title
        }
    }
    
    let stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.spacing = 10
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.distribution = .equalCentering
        return stackView
    }()
    
    let image: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.contentMode = .scaleAspectFit
        return image
    }()
    
    let title: UILabel = {
        let title = UILabel()
        title.textColor = .white
        title.font = UIFont(name: "AvenirNextCondensed-Bold", size: 15)
        title.textAlignment = .center
        title.text = "testtt"
        return title
    }()
    
    override init(frame: CGRect) {
        super.init(frame: .zero)
        contentView.addSubview(stackView)
        stackView.widthAnchor.constraint(equalTo:  contentView.widthAnchor, multiplier: 0.80).isActive = true
        stackView.heightAnchor.constraint(equalTo:  contentView.heightAnchor, multiplier: 0.7).isActive = true
        stackView.centerXAnchor.constraint(equalTo:  contentView.centerXAnchor).isActive = true
        stackView.centerYAnchor.constraint(equalTo:  contentView.centerYAnchor).isActive = true
        
        stackView.addArrangedSubview(image)
        
        image.widthAnchor.constraint(equalTo: stackView.widthAnchor, multiplier: 0.65).isActive = true
        image.heightAnchor.constraint(equalTo: stackView.heightAnchor, multiplier: 0.5).isActive = true
        image.centerXAnchor.constraint(equalTo: stackView.centerXAnchor).isActive = true
        image.centerYAnchor.constraint(equalTo: stackView.centerYAnchor).isActive = true
        
        stackView.addArrangedSubview(title)
        title.heightAnchor.constraint(equalToConstant: 20).isActive = true
        title.widthAnchor.constraint(equalTo: contentView.widthAnchor).isActive = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
}
