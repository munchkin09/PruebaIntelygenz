//
//  ViewController.swift
//  PruebaIntelygenz
//
//  Created by Carlos Ledesma on 21/6/18.
//  Copyright © 2018 Carlos Ledesma. All rights reserved.
//

import UIKit
import CoreData

class InitialViewController: UIViewController {

    @IBOutlet weak var rssCollectionView: UICollectionView!
    var data : [RssModel]? = nil
    var context : NSManagedObjectContext?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        rssCollectionView.delegate = self
        rssCollectionView.dataSource = self
        
        //Hacer llamada al interactor loadAllRssInteractor
        let loadAllRssInteractor = LoadAllRssInteractorImpl()
        loadAllRssInteractor.execute(
            onSuccess: { arrayRss in 
                self.data = arrayRss
                self.rssCollectionView.reloadData()
            },
            onError:{
                print("no ok")
        })
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let controller = segue.destination as! DetailViewController
        let cell = sender as! RssCell
        controller.article = cell.article
    }
}

