//
//  TabBarController.swift
//  ContraintsPractice
//
//  Created by Gonzalo Birrueta on 2/20/20.
//  Copyright © 2020 Gonzalo Birrueta. All rights reserved.
//

import UIKit

class TabBarController: UITabBarController, UITabBarControllerDelegate{
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewControllers()
        self.delegate = self
    }
    
    func setupViewControllers(){
                
        let homeVC = HomeViewController()
        let navController = UINavigationController(rootViewController:homeVC)
        
        homeVC.tabBarItem = UITabBarItem(title: "Home", image: UIImage(named: "tab-home"), tag: 0)
        
        
        let newBoxVC = NewBoxViewController()
        let navController2 = UINavigationController(rootViewController:newBoxVC)
        newBoxVC.tabBarItem = UITabBarItem(title: "New", image: UIImage(named: "tab-box"), tag: 1)
        
        let pastBoxesVC = PastBoxesViewController()
        let navController3 = UINavigationController(rootViewController:pastBoxesVC)
        pastBoxesVC.tabBarItem = UITabBarItem(title: "History", image: UIImage(named: "tab-history"), tag: 2)
        
        viewControllers = [navController, navController2, navController3]
    
    }
    
    func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
        print("Selected a new view controller")
    }

    
}
