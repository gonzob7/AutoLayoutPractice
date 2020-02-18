//
//  NewBoxViewController.swift
//  ContraintsPractice
//
//  Created by Gonzalo Birrueta on 2/17/20.
//  Copyright © 2020 Gonzalo Birrueta. All rights reserved.
//

import UIKit

class NewBoxViewController: UIViewController{
    
    let data = [
        
        Cell(title: "Treats", image: UIImage(named: "treat")!),
        Cell(title: "Toys", image: UIImage(named: "toy")!),
        Cell(title: "Food", image: UIImage(named: "food")!),
        Cell(title: "Grooming", image: UIImage(named: "grooming")!),
        Cell(title: "Lifestyle", image: UIImage(named: "lifestyle")!),
        Cell(title: "Vaccines", image: UIImage(named: "vaccines")!),
        Cell(title: "Accessories", image: UIImage(named: "accessories")!),
        Cell(title: "Housing", image: UIImage(named: "housing")!)
    
    ]
    
    let collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.minimumLineSpacing = 30
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.register(CustomCell.self, forCellWithReuseIdentifier: "cell")
        collectionView.backgroundColor = UIColor(red:1.0, green:1.0, blue:1.0, alpha:0.0)

        return collectionView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setViews()
    }
    
    
    func setViews(){
        self.view.backgroundColor = UIColor(red:0.95, green:0.95, blue:0.95, alpha:1.0)
        self.view.addSubview(collectionView)
        collectionView.widthAnchor.constraint(equalTo: self.view.layoutMarginsGuide.widthAnchor, multiplier: 1.0).isActive = true
        collectionView.heightAnchor.constraint(equalTo: self.view.layoutMarginsGuide.heightAnchor, multiplier: 1.0).isActive = true
        collectionView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        collectionView.centerYAnchor.constraint(equalTo: self.view.layoutMarginsGuide.centerYAnchor).isActive = true
        collectionView.delegate = self
        collectionView.dataSource = self
    
        
    }
}

extension NewBoxViewController: UICollectionViewDelegateFlowLayout, UICollectionViewDataSource{
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width/2.2, height: collectionView.frame.height/3)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return data.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CustomCell
        cell.backgroundColor = UIColor(red:0.59, green:0.59, blue:0.59, alpha:1.0)
        cell.layer.cornerRadius = 10
        cell.data = self.data[indexPath.row]
        return cell
    }
    
    
    
}
