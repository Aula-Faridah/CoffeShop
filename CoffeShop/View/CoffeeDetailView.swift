//
//  CoffeeDetailView.swift
//  CoffeShop
//
//  Created by MacBook Pro on 17/04/24.
//

import SwiftUI

struct CoffeeDetailView: View {
    var coffee: Coffeeshop
    
    var body: some View {
        NavigationStack{
            ScrollView(showsIndicators: false){
                ZStack(alignment:.bottom){
                    Image(coffee.image)
                    
                    HStack {
                        VStack(alignment:.leading) {
                            Text(coffee.name)
                                .font(.system(.title, design:.rounded) )
                                .foregroundStyle(.white)
                            
                            Text(coffee.location)
                                .font(.system(.caption, design: .rounded))
                                .foregroundStyle(.secondary)
                        }
                        .padding()
                        .padding(.leading,12)
                        Spacer()
                        
                        Image(systemName: "fork.knife.circle.fill")
                            .resizable()
                            .foregroundColor(.orange)
                            .frame(width: 32, height: 32)
                            .padding(.trailing, 32)
                    }
                    .background(.cyan .opacity(0.8))
                }
                VStack(alignment:.leading) {
                    Text(coffee.overview)
                        .font(.system(.headline, design: .serif))
                        .padding()
                        .padding(.leading)
                }
            }
            .ignoresSafeArea()
            
        }
        
        
        
        
    }
}

#Preview {
    CoffeeDetailView(coffee: CoffeeshopProvider.allData().first!)
}
