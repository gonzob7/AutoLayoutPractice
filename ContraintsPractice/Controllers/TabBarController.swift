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
        homeVC.tabBarItem =  UITabBarItem(tabBarSystemItem: .bookmarks, tag: 0)
        
        let newBoxVC = NewBoxViewController()
        let navController2 = UINavigationController(rootViewController:newBoxVC)
        homeVC.tabBarItem =  UITabBarItem(tabBarSystemItem: .bookmarks, tag: 0)
        
        let pastBoxesVC = PastBoxesViewController()
        let navController3 = UINavigationController(rootViewController:pastBoxesVC)
        homeVC.tabBarItem =  UITabBarItem(tabBarSystemItem: .bookmarks, tag: 0)

        viewControllers = [navController, navController2, navController3]
    
    }
    
    func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
        print("Selected a new view controller")
    }

    
}
