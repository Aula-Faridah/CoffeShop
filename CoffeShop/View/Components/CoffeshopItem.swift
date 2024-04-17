//
//  CoffeshopRow.swift
//  CoffeShop
//
//  Created by MacBook Pro on 17/04/24.
//

import SwiftUI

struct CoffeshopRow: View {
    var coffee: Coffeeshop
    
    var body: some View {
        HStack(alignment:.top, spacing: 12){
            Image(coffee.image)
                .resizable()
                .scaledToFill()
                .frame(width: 80,height: 80)
                .clipShape(RoundedRectangle(cornerRadius: 12))
            
            VStack(alignment:.leading, spacing: 4){
                Text(coffee.name)
                    .font(.system(.headline,design: .rounded))
                
                Text(coffee.description)
                    .font(.system(.subheadline, design: .rounded))
                    .lineLimit(2)
                Text(coffee.location)
                    .font(.system(.caption2, design: .rounded))
                    .foregroundStyle(.secondary)
            }
        }
    }
}

#Preview {
    CoffeshopRow(coffee: CoffeeshopProvider.allData().first!)
}
