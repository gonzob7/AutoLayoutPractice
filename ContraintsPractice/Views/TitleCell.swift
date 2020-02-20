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
        title.textColor = .white
        title.font = UIFont(name: "AvenirNext-Bold", size: 20)
        return title
    }()
    
    override init(frame: CGRect) {
        super.init(frame: .zero)
        contentView.addSubview(titleLabel)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func set(title: String) {
        titleLabel.text = title
    }
    
    
    
}
