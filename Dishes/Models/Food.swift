//
//  Food.swift
//  Dishes
//
//  Created by Tomasz Koba on 11/11/2021.
//

import Foundation

struct Dish {
    let name: String
    let imageURL: String
    let price: Double
}

extension Dish {
    static func all() -> [Dish] {
        return [
            Dish(name: "Salmon", imageURL: "salmon", price: 19.99),
            Dish(name: "Pasta", imageURL: "pasta", price: 18.99),
            Dish(name: "Soup", imageURL: "soup", price: 10.99),
            Dish(name: "Bacon", imageURL: "bacon", price: 14.99)
        ]
    }
}
