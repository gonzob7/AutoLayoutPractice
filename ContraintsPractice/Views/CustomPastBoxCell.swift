//
//  CustomPastBoxCell.swift
//  ContraintsPractice
//
//  Created by Gonzalo Birrueta on 2/18/20.
//  Copyright © 2020 Gonzalo Birrueta. All rights reserved.
//

import UIKit

class CustomPastBoxCell: UITableViewCell{
    
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
        addSubview(boxImage)
        addSubview(date)
        
        boxImage.
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
