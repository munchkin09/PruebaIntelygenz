//
//  InitialViewController+CollectionView.swift
//  PruebaIntelygenz
//
//  Created by Carlos Ledesma on 21/6/18.
//  Copyright © 2018 Carlos Ledesma. All rights reserved.
//

import UIKit

extension InitialViewController : UICollectionViewDelegate, UICollectionViewDataSource {
    
    /* CollectionView DataSource and Delegate */
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell : RssCell = rssCollectionView.dequeueReusableCell(withReuseIdentifier: "RssCell", for: indexPath) as! RssCell
        
        return cell
    }

    
    
}
