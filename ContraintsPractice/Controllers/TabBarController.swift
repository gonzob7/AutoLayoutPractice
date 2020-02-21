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
        self.tabBar.tintColor = UIColor(red:0.44, green:0.43, blue:0.98, alpha:1.0)

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
        
        let profileVC = ProfileViewController()
        let navController4 = UINavigationController(rootViewController:profileVC)
        profileVC.tabBarItem = UITabBarItem(title: "Profile", image: UIImage(named: "tab-profile"), tag: 3)

        
        viewControllers = [navController, navController2, navController3, navController4]
    
    }
    
    func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
        print("Selected a new view controller")
        
    }
}


