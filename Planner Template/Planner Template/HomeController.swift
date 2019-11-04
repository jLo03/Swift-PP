//
//  HomeController.swift
//  Planner Template
//
//  Created by Justin Lo on 2019-06-23.
//  Copyright © 2019 Justin Lo. All rights reserved.
//

import UIKit

class HomeController: UICollectionViewController{
    let cellID = "cellID"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView?.backgroundColor = UIColor(named: "backgroundColor")
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellID, for: indexPath)
        return cell
    }
    
}

