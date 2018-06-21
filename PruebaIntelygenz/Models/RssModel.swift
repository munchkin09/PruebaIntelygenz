//
//  RssModel.swift
//  PruebaIntelygenz
//
//  Created by Carlos Ledesma on 21/6/18.
//  Copyright © 2018 Carlos Ledesma. All rights reserved.
//

import Foundation

struct RssModel: Decodable {
    let title : String
    let description : String
    let urlToImage : String
    let publishedAt : Date
}
