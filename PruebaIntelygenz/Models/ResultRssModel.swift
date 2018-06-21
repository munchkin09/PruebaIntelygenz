//
//  ResultRssModel.swift
//  PruebaIntelygenz
//
//  Created by Carlos Ledesma on 21/6/18.
//  Copyright © 2018 Carlos Ledesma. All rights reserved.
//

import Foundation

struct ResultRssModel: Decodable {
    let status : String
    let totalResults : Int
    let articles : [RssModel]
}
