//
//  BoxDetailsViewController.swift
//  ContraintsPractice
//
//  Created by Gonzalo Birrueta on 3/4/20.
//  Copyright © 2020 Gonzalo Birrueta. All rights reserved.
//

import UIKit

class BoxDetailsViewController: UIViewController, UITableViewDelegate {

    var boxMonth: String = ""
    
    let tableView = UITableView()
    let itemsArray = [BoxItem(title: "Chew Bone", image: UIImage(named: "Chew Bone")!), BoxItem(title: "Free Checkup", image: UIImage(named: "Free Checkup")!), BoxItem(title: "Tennis Ball and Bone", image: UIImage(named: "Tennis Ball and Bone")!), BoxItem(title: "Dog Leash", image: UIImage(named: "Dog Leash")!)]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setViews()
        setUpNavBar()
        setUpTableView()
        tableView.register(CustomPastBoxDetailCell.self, forCellReuseIdentifier: "cell")
    }
    
    override func loadView() {
      super.loadView()
    }
    
    
    
    func setViews(){
        self.view.backgroundColor = UIColor(red:0.95, green:0.95, blue:0.95, alpha:1.0)
    }
    
    func setUpNavBar(){
        self.navigationController?.navigationBar.isHidden = false
        self.title = self.boxMonth
    }
    
    func setUpTableView(){
        view.addSubview(tableView)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        tableView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
        tableView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        tableView.backgroundColor = UIColor(red:1, green:1, blue:1, alpha:1.0)
        
        tableView.delegate = self
        tableView.dataSource = self
    }

}


extension BoxDetailsViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemsArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CustomPastBoxDetailCell
        cell.setCellContents(item: itemsArray[indexPath.row])
        cell.selectionStyle = .none
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100.0
    }
}
