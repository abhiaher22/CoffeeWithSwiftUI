//
//  HomeView.swift
//  CoffeeWithSwiftUI
//
//  Created by Abhijeet Aher on 12/25/19.
//  Copyright © 2019 Abhijeet Aher. All rights reserved.
//

import SwiftUI

struct HomeView: View {
    
    
    var categories: [String: [Drink]]  {
        .init(
            grouping: drinkData,
            by: {$0.category.rawValue}
         )
        }
    
    
    
    var body: some View {

        NavigationView{
        List(categories.keys.sorted(),id: \String.self) { key in
            DrinkRow(categoryName: "\(key) Drinks".uppercased(), drinks: self.categories[key]!)
            }.navigationBarTitle(Text("COFFEE"))
        }

    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
