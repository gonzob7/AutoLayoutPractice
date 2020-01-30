//
//  ViewController.swift
//  ContraintsPractice
//
//  Created by Gonzalo Birrueta on 1/21/20.
//  Copyright © 2020 Gonzalo Birrueta. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var centerView: UIView!
    var rightView: UIView!
    var bottomView: UIView!
    

    override func loadView() {
        super.loadView()
        
        centerView = UIView(frame: .zero)
        rightView = UIView(frame: .zero)
        bottomView = UIView(frame: .zero)
        
        centerView.translatesAutoresizingMaskIntoConstraints = false
        rightView.translatesAutoresizingMaskIntoConstraints = false
        bottomView.translatesAutoresizingMaskIntoConstraints = false
        
        self.view.addSubview(centerView)
        self.view.addSubview(rightView)
        self.view.addSubview(bottomView)
        
        NSLayoutConstraint.activate([
            centerView.widthAnchor.constraint(equalToConstant: 80),
            centerView.heightAnchor.constraint(equalTo: centerView.widthAnchor, multiplier: 1/1),
            centerView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            centerView.centerYAnchor.constraint(equalTo: self.view.centerYAnchor),
            
            rightView.widthAnchor.constraint(equalToConstant: 80),
            rightView.heightAnchor.constraint(equalTo: rightView.widthAnchor, multiplier: 1/1),
            rightView.centerYAnchor.constraint(equalTo: self.view.centerYAnchor),
            rightView.leadingAnchor.constraint(equalTo: centerView.trailingAnchor, constant: 50),
            
            bottomView.widthAnchor.constraint(equalTo: centerView.widthAnchor, multiplier: 2/1),
            bottomView.heightAnchor.constraint(equalTo: centerView.heightAnchor, multiplier: 2/1),
            bottomView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            bottomView.topAnchor.constraint(equalTo: centerView.bottomAnchor, constant: 50)
            
        ])
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.centerView.backgroundColor = .purple
        self.rightView.backgroundColor = .blue
        self.bottomView.backgroundColor = .yellow
    }
}
