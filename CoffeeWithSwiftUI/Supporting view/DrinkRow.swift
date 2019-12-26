//
//  DrinkRow.swift
//  CoffeeWithSwiftUI
//
//  Created by Abhijeet Aher on 12/24/19.
//  Copyright © 2019 Abhijeet Aher. All rights reserved.
//

import SwiftUI

struct DrinkRow: View {
    
    var categoryName: String
    var drinks: [Drink]
    
        var body: some View {
  
            VStack(alignment: .leading){

            Text(categoryName).font(.title)
        
            ScrollView(.horizontal, showsIndicators: false){
                HStack(){
                    ForEach(self.drinks, id:\.id) {(drink) in
                        
                        NavigationLink(destination: DrinkDetail(drink: drink))
                        {
                            DrinkItem(drink: drink)
                                .frame(width:300)
                                .padding(.trailing, 30)
                        }.buttonStyle(PlainButtonStyle())  
                        
                    }
                }
            }
            }.padding()
            
    }
}

struct DrinkRow_Previews: PreviewProvider {
    static var previews: some View {
        DrinkRow(categoryName: "Hot Drinks", drinks: drinkData)
    }
}
