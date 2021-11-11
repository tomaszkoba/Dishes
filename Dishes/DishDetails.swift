//
//  DishDetails.swift
//  Dishes
//
//  Created by Tomasz Koba on 11/11/2021.
//

import SwiftUI

struct DishDetails: View {
    
    @State private var zoomed: Bool = false
    let dish: Dish
    
    var body: some View {
        VStack {
            Image(dish.imageURL)
                .resizable()
                .aspectRatio(contentMode: self.zoomed ? .fill : .fit)
                .onTapGesture {
                    withAnimation {
                        self.zoomed.toggle()
                    }
                }
            Text(dish.name)
            Text(String(format: "%.2f zł", dish.price))
        }
        .navigationBarTitle(Text(dish.name), displayMode: .inline)
    }
}

struct DishDetails_Previews: PreviewProvider {
    static var previews: some View {
        DishDetails(dish: Dish(name: "Some dish", imageURL: "pasta", price: 3.23))
    }
}
