//
//  CustomView.swift
//  ContraintsPractice
//
//  Created by Gonzalo Birrueta on 1/30/20.
//  Copyright © 2020 Gonzalo Birrueta. All rights reserved.
//

import UIKit

class CustomView: UIView {
    
    var color: UIColor!
    var image: UIImage!
    var headerText: String!
    var bodyText: String!
    
    let stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.spacing = 20
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
        bodyLabel.textAlignment = .center
        bodyLabel.font = UIFont(name: "Helvetica Neue Light", size: 18)
        bodyLabel.textColor = .brown
        return bodyLabel
    }()
    
    
    required init(color: UIColor, image: UIImage, headerText: String, bodyText: String) {
        super.init(frame: .zero)
        self.color = color
        self.image = image
        self.headerText = headerText
        self.bodyText = bodyText
        
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
        
        
    }

    func setup() {
        self.backgroundColor = color
        createStackView()
    }

}
