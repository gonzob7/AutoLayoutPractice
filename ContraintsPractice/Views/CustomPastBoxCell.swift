//
//  CustomPastBoxCell.swift
//  ContraintsPractice
//
//  Created by Gonzalo Birrueta on 2/18/20.
//  Copyright © 2020 Gonzalo Birrueta. All rights reserved.
//

import UIKit

class CustomPastBoxCell: UITableViewCell{
    
    let stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.spacing = 10
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.distribution = .fill
        return stackView
    }()
    
    let date: UILabel = {
        let date = UILabel()
        date.font = UIFont(name: "AvenirNext-Bold", size: 20)
        date.textColor = UIColor(red:0.29, green:0.29, blue:0.29, alpha:1.0)
        date.translatesAutoresizingMaskIntoConstraints = false
        return date
    }()
    
    let boxImage: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.contentMode = .scaleAspectFit
        return image
    }()
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?){
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        contentView.addSubview(stackView)
        
        stackView.widthAnchor.constraint(equalTo:  contentView.widthAnchor).isActive = true
        stackView.heightAnchor.constraint(equalTo:  contentView.heightAnchor).isActive = true
        stackView.centerXAnchor.constraint(equalTo:  contentView.centerXAnchor).isActive = true
        stackView.centerYAnchor.constraint(equalTo:  contentView.centerYAnchor).isActive = true
        
        stackView.addArrangedSubview(boxImage)
        boxImage.widthAnchor.constraint(equalTo: stackView.widthAnchor, multiplier: 0.25).isActive = true
        
        
        stackView.addArrangedSubview(date)
    }
    
    func setCellContents(box: Box){
        boxImage.image = box.image
        date.text = box.title
        
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
