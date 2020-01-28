//
//  OnboardingViewController.swift
//  ContraintsPractice
//
//  Created by Gonzalo Birrueta on 1/28/20.
//  Copyright © 2020 Gonzalo Birrueta. All rights reserved.
//

import UIKit

class OnboardingViewController: UIViewController{
    
    var firstView: UIView!
    var pageControl: UIPageControl!
    
    override func loadView() {
        super.loadView()
        
        firstView = UIView(frame: .zero)
        firstView.translatesAutoresizingMaskIntoConstraints = false
        
        pageControl = UIPageControl(frame: .zero)
        pageControl.translatesAutoresizingMaskIntoConstraints = false
        
        self.view.addSubview(firstView)
        self.view.addSubview(pageControl)
        
        NSLayoutConstraint.activate([
            firstView.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 1/1),
            firstView.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 1/1),
            firstView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            firstView.centerYAnchor.constraint(equalTo: self.view.centerYAnchor),
            
            pageControl.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            pageControl.centerYAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor)
        ])

        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.firstView.backgroundColor = .purple
        self.pageControl.numberOfPages = 3
    }

}
