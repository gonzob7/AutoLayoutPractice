//
//  HomeViewController.swift
//  ContraintsPractice
//
//  Created by Gonzalo Birrueta on 2/17/20.
//  Copyright © 2020 Gonzalo Birrueta. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController{
    
    let stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.spacing = 30
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.distribution = .fillEqually
        return stackView
    }()
    
    let newBox: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("New Box", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = UIColor(red:0.44, green:0.43, blue:0.98, alpha:1.0)
        button.titleLabel?.font = UIFont(name: "AvenirNextCondensed-Bold", size: 18)
        button.layer.cornerRadius = 10
        return button
    }()
    
    let pastBoxes: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Past Boxes", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = UIColor(red:0.44, green:0.43, blue:0.98, alpha:1.0)
        button.titleLabel?.font = UIFont(name: "AvenirNextCondensed-Bold", size: 18)
        button.layer.cornerRadius = 10
        return button
    }()
    
    let profileBox: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Profile", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = UIColor(red:0.44, green:0.43, blue:0.98, alpha:1.0)
        button.titleLabel?.font = UIFont(name: "AvenirNextCondensed-Bold", size: 18)
        button.layer.cornerRadius = 10
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setViews()
    }
    
    func setViews(){
        self.view.backgroundColor = UIColor(red:0.95, green:0.95, blue:0.95, alpha:1.0)
        setNavigation()
        setStackView()
    }
    
    func setNavigation(){
        self.navigationController?.navigationBar.isHidden = false
        self.navigationController?.navigationBar.prefersLargeTitles = true
        self.title = "Home"
        self.navigationItem.setHidesBackButton(true, animated: false)
    }
    
    func setStackView(){
        
        self.view.addSubview(stackView)
        
        stackView.widthAnchor.constraint(equalTo: self.view.layoutMarginsGuide.widthAnchor, multiplier: 0.65).isActive = true
        stackView.heightAnchor.constraint(equalTo: self.view.layoutMarginsGuide.heightAnchor, multiplier: 0.75).isActive = true
        stackView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        stackView.centerYAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.centerYAnchor).isActive = true
        
        
        stackView.addArrangedSubview(newBox)
        
        newBox.widthAnchor.constraint(equalTo: stackView.widthAnchor).isActive = true
        
        
        stackView.addArrangedSubview(pastBoxes)
        
        pastBoxes.widthAnchor.constraint(equalTo: stackView.widthAnchor).isActive = true
        
        
        stackView.addArrangedSubview(profileBox)
        
        profileBox.widthAnchor.constraint(equalTo: stackView.widthAnchor).isActive = true
        
        newBox.addTarget(self, action: #selector(newBoxButtonTapped), for: .touchUpInside)
        
    }
    
    @objc func newBoxButtonTapped(){
        print("new box")
//        let newBoxVC: HomeViewController = HomeViewController()
//        self.navigationController?.pushViewController(newBoxVC, animated: true)
    }

}
