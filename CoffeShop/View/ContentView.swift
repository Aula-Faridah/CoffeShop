//
//  ContentView.swift
//  CoffeShop
//
//  Created by MacBook Pro on 17/04/24.
//

import SwiftUI

struct ContentView: View {
    var coffee: [Coffeeshop] = CoffeeshopProvider.allData()
    
    var body: some View {
        NavigationStack{
            List(coffee) {coffee in
                NavigationLink {
                    CoffeeDetailView(coffee: coffee)
                } label: {
                    CoffeeshopItem(coffee: coffee)
                }
                .listRowSeparator(.hidden)

            }
            .navigationTitle("Coffeeeshop")
            .navigationBarTitleDisplayMode(.inline)
            .listStyle(.plain)
        }
    }
}

#Preview {
    ContentView()
}
