//
//  DetailViewController.swift
//  PruebaIntelygenz
//
//  Created by Carlos Ledesma on 21/6/18.
//  Copyright © 2018 Carlos Ledesma. All rights reserved.
//

import UIKit
import Kingfisher

class DetailViewController: UIViewController {

    @IBOutlet weak var rssDetailImage: UIImageView!
    @IBOutlet weak var rssDetailTitle: UILabel!
    @IBOutlet weak var rssDetailDate: UILabel!
    @IBOutlet weak var rssDetailDesc: UITextView!
    
    var article : RssModel? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        bindData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func rssDetailWebpageClick(_ sender: UIButton) {
        
    }
    
    func bindData() {
        rssDetailImage.kf.setImage(with: URL(string: article!.urlToImage))
        rssDetailTitle.text = article!.title
        rssDetailDesc.text = article!.description
        rssDetailDate.text = article!.publishedAt
        
        
    }
    
}
