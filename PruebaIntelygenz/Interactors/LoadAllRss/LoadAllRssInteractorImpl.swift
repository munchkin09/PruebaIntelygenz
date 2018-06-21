//
//  LoadAllRssInteractorImpl.swift
//  PruebaIntelygenz
//
//  Created by Carlos Ledesma on 21/6/18.
//  Copyright © 2018 Carlos Ledesma. All rights reserved.
//

import Foundation

class LoadAllRssInteractorImpl: LoadAllRssInteractor {
    func execute(onSuccess: @escaping () -> Void, onError: @escaping () -> Void) {
        let url = URL(string: "https://newsapi.org/v2/top-headlines?country=us&category=business&apiKey=\(DATA_API_KEY)")
        let request = URLRequest(url: <#T##URL#>)
    }
    
    
}
