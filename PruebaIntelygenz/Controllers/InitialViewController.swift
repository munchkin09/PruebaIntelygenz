//
//  ViewController.swift
//  PruebaIntelygenz
//
//  Created by Carlos Ledesma on 21/6/18.
//  Copyright © 2018 Carlos Ledesma. All rights reserved.
//

import UIKit

class InitialViewController: UIViewController {

    @IBOutlet weak var rssCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        rssCollectionView.delegate = self
        rssCollectionView.dataSource = self
        
        //Hacer llamada al interactor loadAllRssInteractor
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }
}

