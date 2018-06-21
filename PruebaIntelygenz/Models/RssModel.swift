//
//  RssModel.swift
//  PruebaIntelygenz
//
//  Created by Carlos Ledesma on 21/6/18.
//  Copyright © 2018 Carlos Ledesma. All rights reserved.
//

import Foundation

final class RssModel {
    let title : String
    let description : String
    let urlToImage : String
    let url: String
    let publishedAt : String
    
    init(title: String, description: String, urlToImage: String, url: String, publishedAt: String) {
        self.title = title
        self.description = description
        self.urlToImage = urlToImage
        self.url = url
        self.publishedAt = publishedAt
    }
}



// He intentado usar Decodable pero no he conseguido crear bien la estructura de datos con el campo articles
/*struct RssModel: Decodable {
    let title : String
    let description : String
    let urlToImage : String
    let url: String
    let publishedAt : Date
}*/
