//
//  Cafeteria.swift
//  L4Starter
//
//  Created by Lucy Xu on 10/12/20.
//  Copyright © 2020 Yana Sang. All rights reserved.
//

import Foundation

enum CafeteriaRating {
    case terrible
    case bad
    case moderate
    case good
    case great
}

class Cafeteria {
    var name: String
    var isFavorite: Bool
    var rating: CafeteriaRating

    init(name: String, isFavorite: Bool, rating: CafeteriaRating) {
        self.name = name
        self.isFavorite = isFavorite
        self.rating = rating
    }

    func getRatingString() -> String {
        switch rating {
        case .terrible:
            return "Terrible"
        case .bad:
            return "Bad"
        case .moderate:
            return "Moderate"
        case .good:
            return "Good"
        case .great:
            return "Great"
        }
    }
}


