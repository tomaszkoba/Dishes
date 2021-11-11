//
//  ContentView.swift
//  Dishes
//
//  Created by Tomasz Koba on 11/11/2021.
//

import SwiftUI

struct ContentView: View {
    
    let dishes = Dish.all()
    
    var body: some View {
        NavigationView {
            List(self.dishes, id: \.name) { dish in
                NavigationLink(destination: DishDetails(dish: dish)){
                    DishCell(dish: dish)
                }
            }
            .navigationBarTitle("Dishes")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct DishCell: View {
    
    let dish: Dish
    
    var body: some View {
        HStack {
            Image(dish.imageURL)
                .resizable()
                .frame(width: 100, height: 100)
                .cornerRadius(16)
            VStack(alignment: .leading) {
                Text(dish.name)
                    .font(.title)
                Text(String(format: "%.2f zł", dish.price))
            }
        }
    }
}
