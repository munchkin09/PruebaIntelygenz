//
//  RssCell.swift
//  PruebaIntelygenz
//
//  Created by Carlos Ledesma on 21/6/18.
//  Copyright © 2018 Carlos Ledesma. All rights reserved.
//

import UIKit
import Kingfisher

class RssCell: UICollectionViewCell {
    
    @IBOutlet weak var rssImage: UIImageView!
    @IBOutlet weak var rssTitle: UILabel!
    @IBOutlet weak var rssDescription: UILabel!
    
    var article : RssModel? = nil
    
    func bindData(data: RssModel) {
        
        rssImage.kf.setImage(with: URL(string: data.urlToImage))
        rssTitle.text = data.title
        rssDescription.text = data.description.dropLast(40) + "..."
        article = data        
    }
    
}
