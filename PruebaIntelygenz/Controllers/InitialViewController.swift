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
        
        title = "App Lector RSS"
        
        let reachability = Reachability()!
        
        reachability.whenReachable = { reachability in
            //Recibimos un array de noticias nuevas
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
        reachability.whenUnreachable = { _ in
            // Aquí tengo que cargar los datos de CoreData porque no hay conexión
        }
        
        do {
            try reachability.startNotifier()
        } catch {
            print("Unable to start notifier")
        }
        
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let controller = segue.destination as! DetailViewController
        let cell = sender as! RssCell
        controller.article = cell.article
    }
}

