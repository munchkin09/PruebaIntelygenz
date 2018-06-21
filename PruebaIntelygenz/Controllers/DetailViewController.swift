//
//  DetailViewController.swift
//  PruebaIntelygenz
//
//  Created by Carlos Ledesma on 21/6/18.
//  Copyright © 2018 Carlos Ledesma. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var rssDetailImage: UIImageView!
    @IBOutlet weak var rssDetailTitle: UILabel!
    @IBOutlet weak var rssDetailDate: UILabel!
    @IBOutlet weak var rssDetailDesc: UITextView!
    
    // var rssDataModel : RssModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func rssDetailWebpageClick(_ sender: UIButton) {
        
    }
    
}
