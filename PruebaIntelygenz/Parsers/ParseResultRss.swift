//
//  ParseResultRss.swift
//  PruebaIntelygenz
//
//  Created by Carlos Ledesma on 21/6/18.
//  Copyright © 2018 Carlos Ledesma. All rights reserved.
//

import Foundation

func parseResultRss(data: Data) -> [RssModel] {
    var arrayParsed : [RssModel] = []
    do {
        if let json = try JSONSerialization.jsonObject(with: data, options: .allowFragments) as? [String: Any],
            let articles = json["articles"] as? [[String: Any]] {
                for article in articles {
                    let title = article["title"] as! String
                    let description = article["description"] as? String ?? ""
                    let urlToImage = (article["urlToImage"] as? String) ?? "https://vignette.wikia.nocookie.net/project-pokemon/images/4/47/Placeholder.png/revision/latest?cb=20170330235552"
                    let url = article["url"] as? String ?? ""
                    let publishedAt = article["publishedAt"] as? String
                    print(publishedAt)
                    arrayParsed.append(RssModel(title: title, description: description, urlToImage: urlToImage, url: url, publishedAt: publishedAt!))
                }
                
                
        }
        
    } catch let error {
        print(error)
    }
    
    return arrayParsed
    
}

func parseDate(date: String) -> Date? {
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss"
    dateFormatter.timeZone = TimeZone.current
    dateFormatter.locale = Locale.current
    return dateFormatter.date(from: date)
}
