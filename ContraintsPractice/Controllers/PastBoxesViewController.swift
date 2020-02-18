//
//  PastBoxesViewController.swift
//  ContraintsPractice
//
//  Created by Gonzalo Birrueta on 2/18/20.
//  Copyright © 2020 Gonzalo Birrueta. All rights reserved.
//

import UIKit

class PastBoxesViewController: UIViewController, UITableViewController{
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setViews()
        setUpNavBar()
        setUpTableView()
    }
    
    func setViews(){
        self.view.backgroundColor = UIColor(red:0.95, green:0.95, blue:0.95, alpha:1.0)
    }
    
    func setUpNavBar(){
        self.navigationController?.navigationBar.isHidden = false
        self.navigationController?.navigationBar.prefersLargeTitles = true
        self.title = "Past Boxes"
    }
    
    func setUpTableView(){
        
        
    }
    
    
    
}
