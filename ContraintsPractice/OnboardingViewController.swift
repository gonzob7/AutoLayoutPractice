//
//  OnboardingViewController.swift
//  ContraintsPractice
//
//  Created by Gonzalo Birrueta on 1/28/20.
//  Copyright © 2020 Gonzalo Birrueta. All rights reserved.
//

import UIKit

class OnboardingViewController: UIViewController{
    
    
    var currentPage = 1
    let firstView: UIView = CustomView(color: .orange)
    let secondView: UIView = CustomView(color: .green)
    let thirdView: UIView = CustomView(color: .yellow)
    var numOfPages: [CustomView] = []
    
    let scrollView: UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.isPagingEnabled = true
        scrollView.showsHorizontalScrollIndicator = false
        return scrollView
    }()

    
    let container: UIStackView = {
        let container = UIStackView()
        container.axis = .horizontal
        container.spacing = 0
        container.translatesAutoresizingMaskIntoConstraints = false
        container.distribution = .fillEqually
        return container
    }()
    
               view.addSubview(scrollView)

               
               
               
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

    
    override func viewDidLoad() {
        super.viewDidLoad()
//        self.pageControl.numberOfPages = 3
        
    }
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        
    }

}
