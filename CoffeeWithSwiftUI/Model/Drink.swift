//
//  Drink.swift
//  CoffeeWithSwiftUI
//
//  Created by Abhijeet Aher on 12/25/19.
//  Copyright © 2019 Abhijeet Aher. All rights reserved.
//

import Foundation

struct Drink: Decodable {
    var id : Int
    var name: String
    var imageName: String
    var description: String
    var category: Category
    
    
    enum Category: String, CaseIterable, Decodable{
        case hot = "hot"
        case cold = "cold"
    }
    
}
