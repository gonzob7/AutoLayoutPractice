//
//  CustomPastBoxDetailCell.swift
//  ContraintsPractice
//
//  Created by Gonzalo Birrueta on 3/4/20.
//  Copyright © 2020 Gonzalo Birrueta. All rights reserved.
//

import Foundation
import UIKit

class CustomPastBoxDetailCell: UITableViewCell{
    
    let stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.spacing = 10
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.distribution = .fill
        return stackView
    }()
    
    let title: UILabel = {
        let title = UILabel()
        title.font = UIFont(name: "AvenirNext-Bold", size: 20)
        title.textColor = UIColor(red:0.29, green:0.29, blue:0.29, alpha:1.0)
        title.translatesAutoresizingMaskIntoConstraints = false
        return title
    }()
    
    let itemImage: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.contentMode = .scaleAspectFit
        return image
    }()
    
    let favoriteButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(named: "unfavorite"), for: .normal)
        button.imageView?.contentMode = .scaleAspectFit
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?){
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        
        
        contentView.addSubview(stackView)
        
        stackView.widthAnchor.constraint(equalTo:  contentView.widthAnchor, multiplier: 0.85).isActive = true
        stackView.heightAnchor.constraint(equalTo:  contentView.heightAnchor, multiplier: 0.75).isActive = true
        stackView.centerXAnchor.constraint(equalTo:  contentView.centerXAnchor).isActive = true
        stackView.centerYAnchor.constraint(equalTo:  contentView.centerYAnchor).isActive = true
        
        stackView.addArrangedSubview(itemImage)
        itemImage.widthAnchor.constraint(equalTo: stackView.widthAnchor, multiplier: 0.25).isActive = true
        
        stackView.addArrangedSubview(title)
        title.widthAnchor.constraint(equalTo: stackView.widthAnchor, multiplier: 0.55).isActive = true
        
        stackView.addArrangedSubview(favoriteButton)
        favoriteButton.isHidden = false
        favoriteButton.isUserInteractionEnabled = true
        favoriteButton.addTarget(self, action: #selector(favTapped), for: .touchDown)
        
    }
    
    func setCellContents(item: BoxItem){
        itemImage.image = item.image
        title.text = item.title
    }
    
    @objc func favTapped(){
        if self.favoriteButton.currentImage == UIImage(named: "unfavorite"){
            
            UIView.animate(withDuration: 0.3,
            animations: {
                self.favoriteButton.transform = CGAffineTransform(scaleX: 1.2, y: 1.2)
            },
            completion: { _ in
                UIView.animate(withDuration: 0.3) {
                    self.favoriteButton.transform = CGAffineTransform.identity
                }
            })
            
            self.favoriteButton.setImage(UIImage(named: "favorite"), for: .normal)
        }else{
            self.favoriteButton.setImage(UIImage(named: "unfavorite"), for: .normal)
        }
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
