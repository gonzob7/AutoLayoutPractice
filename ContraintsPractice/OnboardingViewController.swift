//
//  OnboardingViewController.swift
//  ContraintsPractice
//
//  Created by Gonzalo Birrueta on 1/28/20.
//  Copyright © 2020 Gonzalo Birrueta. All rights reserved.
//

import UIKit

class OnboardingViewController: UIViewController, UIScrollViewDelegate{
    
    var scrollView: UIScrollView!
    var container: UIStackView!
    let firstView: UIView = UIView()
    let secondView: UIView = UIView()
    let thirdView: UIView = UIView()
    
    override func loadView() {
        super.loadView()
 
               
               scrollView = UIScrollView()
               scrollView.translatesAutoresizingMaskIntoConstraints = false
               scrollView.isPagingEnabled = true
               scrollView.showsHorizontalScrollIndicator = false
               scrollView.delegate = self
               view.addSubview(scrollView)
               
               container = UIStackView()
               container.axis = .horizontal
               container.spacing = 0
               container.translatesAutoresizingMaskIntoConstraints = false
               container.distribution = .fillEqually
               
               scrollView.addSubview(container)
               container.addArrangedSubview(firstView)
               container.addArrangedSubview(secondView)
               container.addArrangedSubview(thirdView)
               
               scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
               scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
               scrollView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
               scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
               
               container.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor).isActive = true
               container.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor).isActive = true
               container.topAnchor.constraint(equalTo: scrollView.topAnchor).isActive = true
               container.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor).isActive = true
               container.heightAnchor.constraint(equalTo: scrollView.heightAnchor).isActive = true
               
               firstView.widthAnchor.constraint(equalToConstant: view.frame.size.width).isActive = true
               secondView.widthAnchor.constraint(equalToConstant: view.frame.size.width).isActive = true
               thirdView.widthAnchor.constraint(equalToConstant: view.frame.size.width).isActive = true

        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.firstView.backgroundColor = .purple
        self.secondView.backgroundColor = .blue
        self.thirdView.backgroundColor = .systemPink
//        self.pageControl.numberOfPages = 3
    }

}
