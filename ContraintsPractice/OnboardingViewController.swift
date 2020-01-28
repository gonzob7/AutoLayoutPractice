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
    var secondView: UIView!
    var pageControl: UIPageControl!
    var scrollView: UIScrollView!
    
    override func loadView() {
        super.loadView()
        
        firstView = UIView(frame: .zero)
        firstView.translatesAutoresizingMaskIntoConstraints = false
        
        secondView = UIView(frame: .zero)
        secondView.translatesAutoresizingMaskIntoConstraints = false
        
        pageControl = UIPageControl(frame: .zero)
        pageControl.translatesAutoresizingMaskIntoConstraints = false
        
        scrollView = UIScrollView(frame: .zero)
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        
        
        
        self.view.addSubview(scrollView)
        self.scrollView.addSubview(firstView)
        self.scrollView.addSubview(secondView)
        self.scrollView.addSubview(pageControl)
        
        
        NSLayoutConstraint.activate([
            scrollView.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 3/1),
            scrollView.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 1/1),
            scrollView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            scrollView.centerYAnchor.constraint(equalTo: self.view.centerYAnchor),
            
            
            firstView.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 1/1),
            firstView.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 1/1),
            firstView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            firstView.centerYAnchor.constraint(equalTo: self.view.centerYAnchor),
            
            pageControl.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            pageControl.centerYAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor),
            
            
            secondView.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 1/1),
            secondView.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 1/1),
            secondView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            secondView.centerYAnchor.constraint(equalTo: self.view.centerYAnchor),
            
            pageControl.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            pageControl.centerYAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor)
            
        ])

        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.firstView.backgroundColor = .purple
        self.secondView.backgroundColor = .blue
        self.pageControl.numberOfPages = 3
    }

}
