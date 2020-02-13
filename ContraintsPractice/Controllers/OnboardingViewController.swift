//
//  OnboardingViewController.swift
//  ContraintsPractice
//
//  Created by Gonzalo Birrueta on 1/28/20.
//  Copyright © 2020 Gonzalo Birrueta. All rights reserved.
//

import UIKit

class OnboardingViewController: UIViewController, UIScrollViewDelegate{
    
    
    var firstView: CustomView!
    var secondView: CustomView!
    var thirdView: CustomView!
    var numOfPages: [CustomView] = []
    
    let scrollView: UIScrollView = {
        let scrollView: UIScrollView = UIScrollView(frame: .zero)
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.isPagingEnabled = true
        scrollView.showsHorizontalScrollIndicator = false
        scrollView.showsVerticalScrollIndicator = false
        scrollView.contentSize.height = 1.0
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
    
    let pageControl: UIPageControl = {
        let pageControl = UIPageControl()
        pageControl.currentPage = 0
        pageControl.isUserInteractionEnabled = false
        pageControl.translatesAutoresizingMaskIntoConstraints = false
        return pageControl
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setCustomViews()
        setViews()
        setPageControl()
    }
    
    func setViews(){
        navigationController?.navigationBar.isHidden = true
        scrollView.delegate = self
        view.addSubview(scrollView)
        scrollView.addSubview(container)
        
        scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        scrollView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        
        container.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor).isActive = true
        container.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor).isActive = true
        container.topAnchor.constraint(equalTo: scrollView.topAnchor).isActive = true
        container.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor).isActive = true
        container.heightAnchor.constraint(equalTo: scrollView.heightAnchor).isActive = true
    }
    
    func setCustomViews(){
        firstView = CustomView(color: UIColor(red:0.44, green:0.31, blue:0.22, alpha:1.0), image: UIImage(named: "coffee")!, headerText: "Coffee Monthly Crate!", bodyText: "Recieve a monthly box of different coffee beans from all over the world!")
        secondView = CustomView(color: UIColor(red:0.44, green:0.31, blue:0.22, alpha:1.0), image: UIImage(named: "coffee")!, headerText: "Coffee Monthly Crate!", bodyText: "Recieve a monthly box of different coffee beans from all over the world!")
        thirdView = CustomView(color: UIColor(red:0.44, green:0.31, blue:0.22, alpha:1.0), image: UIImage(named: "coffee")!, headerText: "Coffee Monthly Crate!", bodyText: "Recieve a monthly box of different coffee beans from all over the world!", isLastPage: true)
        
        
        numOfPages = [firstView, secondView, thirdView]

        for page in numOfPages{
            container.addArrangedSubview(page)
            page.widthAnchor.constraint(equalToConstant: view.frame.size.width).isActive = true
        }
    }
    
    func setPageControl(){
        pageControl.numberOfPages = numOfPages.count
        view.addSubview(pageControl)
        pageControl.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -30).isActive = true
        pageControl.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        pageControl.heightAnchor.constraint(equalToConstant: 50).isActive = true
    }
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        let pageNumber = round(scrollView.contentOffset.x / scrollView.frame.size.width)
        pageControl.currentPage = Int(pageNumber)

    }
    

    

}
