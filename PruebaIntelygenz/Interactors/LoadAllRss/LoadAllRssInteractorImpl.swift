//
//  LoadAllRssInteractorImpl.swift
//  PruebaIntelygenz
//
//  Created by Carlos Ledesma on 21/6/18.
//  Copyright © 2018 Carlos Ledesma. All rights reserved.
//

import Foundation

class LoadAllRssInteractorImpl: LoadAllRssInteractor {
    
    func execute(onSuccess: @escaping ([RssModel]) -> Void, onError: @escaping () -> Void) {
        
        let reachability = Reachability()!
        
        reachability.whenReachable = { reachability in
            let url = URL(string: "https://newsapi.org/v2/top-headlines?country=us&category=business&apiKey=\(CONSTANTS.API_KEY)")
            let request = URLRequest(url: url!)
            
            let task = URLSession.shared.dataTask(with: request){ data,response,error in
                let arrayRss = parseResultRss(data: data!)
                
                /* Aquí deberíamos guardar los datos a CoreData */
                OperationQueue.main.addOperation {
                    onSuccess(arrayRss)
                }
                
                
                
            }
            task.resume()
        }
        reachability.whenUnreachable = { _ in
            // Aquí deberíamos recoger los datos de CoreData
        }
        
        do {
            try reachability.startNotifier()
        } catch {
            print("Unable to start notifier")
        }
        
        
        
        
        
        
        
    }
    
    
}
