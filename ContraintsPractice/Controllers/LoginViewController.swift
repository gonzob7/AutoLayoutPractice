//
//  LoginViewController.swift
//  ContraintsPractice
//
//  Created by Gonzalo Birrueta on 2/17/20.
//  Copyright © 2020 Gonzalo Birrueta. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController{
    
    let logo: UILabel = {
        let logo = UILabel()
        logo.font = UIFont(name: "MarkerFelt-Wide", size: 60)
        logo.text = "Petbox"
        logo.textColor = UIColor(red:0.95, green:0.95, blue:0.95, alpha:1.0)
        logo.textAlignment = .center
        return logo
    }()
    
    let stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.spacing = 0
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.distribution = .fill
        return stackView
    }()
    
    let imageView: UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "box"))
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let loginBtn: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Login", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.titleLabel?.font = UIFont(name: "AvenirNextCondensed-DemiBold", size: 18)
        button.backgroundColor = UIColor(red:0.97, green:0.97, blue:0.97, alpha:1.0)
        button.layer.cornerRadius = 10
        return button
    }()

    
    //MARK: Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setViews()
    }
    
    func setViews(){
        
        self.view.addSubview(stackView)
        stackView.distribution = .fill
        stackView.widthAnchor.constraint(equalTo: self.view.layoutMarginsGuide.widthAnchor, multiplier: 0.65).isActive = true
        stackView.heightAnchor.constraint(equalTo: self.view.layoutMarginsGuide.heightAnchor, multiplier: 0.50).isActive = true
        stackView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        stackView.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true

        self.view.backgroundColor = UIColor(red:0.44, green:0.40, blue:1.00, alpha:1.0)
        
        stackView.addArrangedSubview(logo)
        
        logo.widthAnchor.constraint(equalTo: stackView.widthAnchor).isActive = true
        
        stackView.addArrangedSubview(loginBtn)
        
        loginBtn.widthAnchor.constraint(equalTo: stackView.widthAnchor).isActive = true
        loginBtn.heightAnchor.constraint(equalToConstant: 50).isActive = true
    }
}
