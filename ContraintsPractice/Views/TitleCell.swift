//
//  TitleCell.swift
//  ContraintsPractice
//
//  Created by Gonzalo Birrueta on 2/20/20.
//  Copyright © 2020 Gonzalo Birrueta. All rights reserved.
//

import UIKit

class TitleCell: UICollectionViewCell {
    
    let titleLabel: UILabel = {
        let title = UILabel()
        title.translatesAutoresizingMaskIntoConstraints = false
        title.textColor = .black
        title.font = UIFont(name: "AvenirNext-Bold", size: 20)
        return title
    }()
    
    override init(frame: CGRect) {
        super.init(frame: .zero)
        
        
        self.addSubview(titleLabel)
        
        titleLabel.topAnchor.constraint(equalTo:  contentView.topAnchor).isActive = true
        titleLabel.bottomAnchor.constraint(equalTo:  contentView.bottomAnchor).isActive = true
        titleLabel.trailingAnchor.constraint(equalTo:  contentView.trailingAnchor, constant: 20).isActive = true
        titleLabel.leadingAnchor.constraint(equalTo:  contentView.leadingAnchor, constant: 20).isActive = true

    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func set(title: String) {
        titleLabel.text = title
    }
    
    
    
}
