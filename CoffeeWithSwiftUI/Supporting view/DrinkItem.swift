//
//  DrinkItem.swift
//  CoffeeWithSwiftUI
//
//  Created by Abhijeet Aher on 12/25/19.
//  Copyright © 2019 Abhijeet Aher. All rights reserved.
//

import SwiftUI

struct DrinkItem: View {
    var drink: Drink
    var body: some View {
       
        VStack(alignment: .leading, spacing: 16.0) {
           
            Image(drink.imageName)
                .resizable()
                .frame(width: 300, height: 150)
                .shadow(radius: 10)
                .cornerRadius(10)
                .aspectRatio(contentMode: ContentMode.fit)
                      
        
            VStack(alignment: .leading, spacing: 5.0){
                
                Text(drink.name)
                    .font(.headline)
                    .foregroundColor(.black)
                
                Text(drink.description)
                    .font(.subheadline)
                    .lineLimit(2)
                    .frame( height: 40)
                    .foregroundColor(.black)
                      }
                    }
              }
}


struct DrinkItem_Previews: PreviewProvider {
    static var previews: some View {
        DrinkItem(drink: drinkData[0])
    }
}
