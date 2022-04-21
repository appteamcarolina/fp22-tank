//
//  DrinkView.swift
//  tipsytracker
//
//  Created by Lauren Jones on 4/20/22.
//

import SwiftUI

struct DrinkView: View {
    let drink: DrinkViewModel
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            HStack {
                VStack(alignment: .leading) {
                    Text(drink.drinkName)
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .lineLimit(1)
                    
                    Group {
                        details
                    }
                    .font(.caption)
                    .foregroundColor(.secondary)
                }
                
                Spacer()
                
                URLImage(urlString: drink.drinkThumb)
                    .frame(width: 75, height: 75)
                    .cornerRadius(5)
                    .padding([.leading, .vertical], 5)
            }
            
            Divider()
        }
    }
    
    var details: some View {
        VStack(alignment: .leading) {
            Text(drink.drinkCategory)
                .lineLimit(1)

            Text(drink.drinkAlternative)
        }
        .padding(.bottom, 1)
    }

}

struct DrinkView_Previews: PreviewProvider {
    static var previews: some View {
        DrinkView(drink: DrinkViewModel(drink: .example))
            .preferredColorScheme(.dark)
            .padding()
    }
}
