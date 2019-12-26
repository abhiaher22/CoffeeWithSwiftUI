//
//  DrinkDetail.swift
//  CoffeeWithSwiftUI
//
//  Created by Abhijeet Aher on 12/25/19.
//  Copyright © 2019 Abhijeet Aher. All rights reserved.
//

import SwiftUI

struct DrinkDetail: View {
    
    var drink: Drink
    var body: some View {
        
        List{
            ZStack(alignment: .bottom) {
                Image(drink.imageName)
                    .resizable()
                    .frame(height:300)
                
                Rectangle()
                    .frame(height:80)
                    .opacity(0.25)
                    .blur(radius: 10)
                
                HStack{
                Text(drink.name)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.leading)
                    .padding([.leading, .bottom])
                Spacer()
                }
                
            }
            .listRowInsets(EdgeInsets())
            Text(drink.description)
                .font(.body)
                .foregroundColor(.primary)
                .lineSpacing(10)
                

        }.edgesIgnoringSafeArea(.top)
        .navigationBarHidden(true)
    }
}

struct DrinkDetail_Previews: PreviewProvider {
    static var previews: some View {
        DrinkDetail(drink: drinkData[0])
    }
}
