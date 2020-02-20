//
//  PastBoxesViewController.swift
//  ContraintsPractice
//
//  Created by Gonzalo Birrueta on 2/18/20.
//  Copyright © 2020 Gonzalo Birrueta. All rights reserved.
//

import UIKit

class PastBoxesViewController: UIViewController, UITableViewDelegate{
    
    let tableView =  UITableView()
    let boxesArray = [Box(title: "January 2020", image: UIImage(named: "box2")!), Box(title: "Febuary 2020", image: UIImage(named: "box2")!), Box(title: "March 2020", image: UIImage(named: "box2")!)]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setViews()
        setUpNavBar()
        setUpTableView()
        tableView.register(CustomPastBoxCell.self, forCellReuseIdentifier: "cell")
    }
    
    override func loadView() {
      super.loadView()
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
        view.addSubview(tableView)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        tableView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
        tableView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        tableView.backgroundColor = UIColor(red:0.95, green:0.95, blue:0.95, alpha:1.0)
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    

    
}


extension PastBoxesViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return boxesArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
      let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CustomPastBoxCell
        cell.setCellContents(box: boxesArray[indexPath.row])
        cell.accessoryType = .disclosureIndicator
      return cell
    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100.0
    }
}
