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
    var animated: Int = 0
    var isAnimationLocked: Bool = false
    
    let boxesArray = [Box(title: "March 2020", image: UIImage(named: "box2")!), Box(title: "Febuary 2020", image: UIImage(named: "box2")!), Box(title: "January 2020", image: UIImage(named: "box2")!), Box(title: "December 2019", image: UIImage(named: "box2")!), Box(title: "November 2019", image: UIImage(named: "box2")!), Box(title: "October 2019", image: UIImage(named: "box2")!), Box(title: "September 2019", image: UIImage(named: "box2")!)]
    
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
    
    override func viewDidAppear(_ animated: Bool) {
        self.animated = 0
        tableView.reloadData()
    }
    
    func setViews(){
        self.view.backgroundColor = UIColor(red:0.95, green:0.95, blue:0.95, alpha:1.0)
    }
    
    func setUpNavBar(){
        self.navigationController?.navigationBar.prefersLargeTitles = true
        self.title = self.tabBarItem.title
    }
    
    func setUpTableView(){
        view.addSubview(tableView)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        tableView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
        tableView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        tableView.backgroundColor = UIColor(red:1.0, green:1.0, blue:1.0, alpha:1.0)
        
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
        cell.selectionStyle = .none
      return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100.0
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detail: BoxDetailsViewController = BoxDetailsViewController()
        detail.boxMonth = self.boxesArray[indexPath.row].title + " Box"
        self.navigationController?.pushViewController(detail, animated: true)
        self.isAnimationLocked = true
    }
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        if animated <= (boxesArray.count-1) && !isAnimationLocked{
            cell.transform = CGAffineTransform(translationX: tableView.bounds.width, y: 0)

            UIView.animate(
                withDuration: 0.35, delay: 0.25 * Double(indexPath.row), options: [.curveEaseInOut],
            animations: {
                    cell.transform = CGAffineTransform(translationX: 0, y: 0)
            })
            animated += 1
        }
        
    }
    
}
