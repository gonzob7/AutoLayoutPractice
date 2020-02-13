//
//  CustomView.swift
//  ContraintsPractice
//
//  Created by Gonzalo Birrueta on 1/30/20.
//  Copyright © 2020 Gonzalo Birrueta. All rights reserved.
//

import UIKit

class CustomView: UIView {
    
    var isLastPage: Bool!
    var color: UIColor!
    var image: UIImage!
    var headerText: String!
    var bodyText: String!
//    var continueButton: UIButton!
    
    
    let stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.spacing = 0
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.distribution = .fill
        return stackView
    }()
    
    let imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let headerLabel: UILabel = {
        let headerLabel = UILabel()
        headerLabel.textAlignment = .center
        headerLabel.font = UIFont(name: "Helvetica Neue Bold", size: 30)
        headerLabel.textColor = .brown
        return headerLabel
    }()
    
    let bodyLabel: UILabel = {
        let bodyLabel = UILabel()
        bodyLabel.numberOfLines = 1
        bodyLabel.textAlignment = .center
        bodyLabel.font = UIFont(name: "Helvetica Neue Light", size: 18)
        bodyLabel.textColor = .black
        return bodyLabel
    }()
    
    let continueButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Continue", for: .normal)
        button.backgroundColor = .black
        button.isUserInteractionEnabled = true
        return button
        
    }()
    
    
    //Initializer for a screen
    
    required init(color: UIColor, image: UIImage, headerText: String, bodyText: String, isLastPage: Bool = false) {
        super.init(frame: .zero)
        self.color = color
        self.image = image
        self.headerText = headerText
        self.bodyText = bodyText
        self.isLastPage = isLastPage
        setup()
    }
    

    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }
    
    func createStackView(){
        
        addSubview(stackView)
//        self.stackView.addSubview(headerLabel)
        
        stackView.distribution = .fill
        stackView.widthAnchor.constraint(equalTo: self.layoutMarginsGuide.widthAnchor, multiplier: 0.65).isActive = true
        stackView.heightAnchor.constraint(equalTo: self.layoutMarginsGuide.heightAnchor, multiplier: 0.50).isActive = true

        stackView.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        stackView .centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        
        self.stackView.addArrangedSubview(bodyLabel)

        self.stackView.addArrangedSubview(imageView)

        imageView.trailingAnchor.constraint(equalTo: stackView.trailingAnchor).isActive = true
        imageView.leadingAnchor.constraint(equalTo: stackView.leadingAnchor).isActive = true
        imageView.topAnchor.constraint(equalTo: stackView.topAnchor, constant: 50).isActive = true
        
        bodyLabel.widthAnchor.constraint(equalTo: stackView.widthAnchor).isActive = true
        
        stackView.addArrangedSubview(continueButton)
        
        continueButton.widthAnchor.constraint(equalTo: stackView.widthAnchor).isActive = true
        continueButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        continueButton.isHidden = true
        if isLastPage {
            continueButton.isHidden = false
        }
    }
    

    func setColor(){
        self.backgroundColor = color
    }
    
    func setImage(){
        self.imageView.image = image
    }
    
    func setBody(){
        self.bodyLabel.text = bodyText
    }
    
    
    
    func setup() {
        
        createStackView()
        setColor()
        setImage()
        setBody()
        
    }

}
