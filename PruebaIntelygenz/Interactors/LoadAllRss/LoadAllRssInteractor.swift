//
//  LoadAllRssInteractor.swift
//  PruebaIntelygenz
//
//  Created by Carlos Ledesma on 21/6/18.
//  Copyright © 2018 Carlos Ledesma. All rights reserved.
//

import Foundation

protocol LoadAllRssInteractor {
    func execute(onSuccess: @escaping ([RssModel])-> Void, onError: @escaping () -> Void)
}
