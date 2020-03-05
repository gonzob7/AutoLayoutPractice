//
//  BoxDetailsViewController.swift
//  ContraintsPractice
//
//  Created by Gonzalo Birrueta on 3/4/20.
//  Copyright © 2020 Gonzalo Birrueta. All rights reserved.
//

import UIKit

class BoxDetailsViewController: UIViewController, UITableViewDelegate {

    let tableView = UITableView()
    let itemsArray = [BoxItem(title: "Item1", image: UIImage(named: "unfavorite")!, isFavorite: false), BoxItem(title: "Item2", image: UIImage(named: "unfavorite")!, isFavorite: false), BoxItem(title: "Item3", image: UIImage(named: "unfavorite")!, isFavorite: false)]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.register(CustomPastBoxDetailCell.self, forCellReuseIdentifier: "cell")
        // Do any additional setup after loading the view.
    }
    
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
