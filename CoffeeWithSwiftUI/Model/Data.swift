//
//  Data.swift
//  CoffeeWithSwiftUI
//
//  Created by Abhijeet Aher on 12/25/19.
//  Copyright © 2019 Abhijeet Aher. All rights reserved.
//

import Foundation

let drinkData : [Drink] = loadData(filename:"drinks.json")

func loadData <T:Decodable> (filename: String, as type:T.Type = T.self ) -> T
{
    let data : Data
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
        else{
            fatalError("Couldn't find \(filename) in main bundle")
    }
    
    do{
        data = try Data(contentsOf: file)
    }catch{
        fatalError("Couldn't load \(filename)")

    }
    
    do{
       return  try JSONDecoder().decode(T.self, from: data)
    }catch{
        fatalError("Couldn't parse \(filename)")
    }
}
