//
//  HomeViewController.swift
//  ContraintsPractice
//
//  Created by Gonzalo Birrueta on 2/17/20.
//  Copyright © 2020 Gonzalo Birrueta. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController, UICollectionViewDelegate{
    
    
    var collectionView: UICollectionView!
    
    lazy var sections: [Section] = [
        TitleSection(headerTitle: "Featured Categories"),
        FeaturedSection()
        
    ]
    
    lazy var collectionViewLayout: UICollectionViewLayout = {
        var sections = self.sections
        let layout = UICollectionViewCompositionalLayout { (sectionIndex, environment) -> NSCollectionLayoutSection? in
            return sections[sectionIndex].layoutSection()
        }
        return layout
    }()
    
        
    override func viewDidLoad() {
        super.viewDidLoad()
        setViews()
        setupCollectionView()
        collectionView.delegate = self
        collectionView.dataSource = self
    }
    
    func setViews(){
        self.view.backgroundColor = UIColor(red:0.95, green:0.95, blue:0.95, alpha:1.0)
        setNavigation()
        setupCollectionView()
    }
    
    func setNavigation(){
        self.navigationController?.navigationBar.isHidden = false
        self.navigationController?.navigationBar.prefersLargeTitles = true
        self.title = self.tabBarItem.title
        self.navigationItem.setHidesBackButton(true, animated: false)
    }
    
    func setupCollectionView(){
        collectionView = UICollectionView(frame: view.bounds, collectionViewLayout: collectionViewLayout)
        collectionView.backgroundColor = UIColor.white
        collectionView.register(CustomCell.self, forCellWithReuseIdentifier: "CustomCell")
        collectionView.register(TitleCell.self, forCellWithReuseIdentifier: "TitleCell")
        self.view.addSubview(collectionView)
        collectionView.reloadData()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        collectionView.reloadData()
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        collectionView.reloadData()
    }

    
    @objc func newBoxButtonTapped(){
        let newBoxVC: NewBoxViewController = NewBoxViewController()
        self.navigationController?.pushViewController(newBoxVC, animated: true)
    }
    
    
    @objc func pastBoxesButtonTapped(){
        let pastBoxesVC: PastBoxesViewController = PastBoxesViewController()
        self.navigationController?.pushViewController(pastBoxesVC, animated: true)
    }
    
}


extension HomeViewController: UICollectionViewDataSource {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        sections.count
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        sections[section].numberOfItems
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        sections[indexPath.section].configureCell(collectionView: collectionView, indexPath: indexPath)
    }
}
