//
//  DrinkAddRemoveView.swift
//  tipsytracker
//
//  Created by Lauren Jones on 4/19/22.
//
import SwiftUI

class DrinkIncrementer: ObservableObject {
    @Published var numDrinks = 0
}


struct DrinkAddRemoveView: View {
    //@State private var numDrinks = 0
    @StateObject var drinkincrementer : DrinkIncrementer
    
    var body: some View {
        HStack {
            Button(action: {
                if (drinkincrementer.numDrinks == 0) {
                    drinkincrementer.numDrinks = 0
                } else {
                    drinkincrementer.numDrinks -= 1
                }
                }, label: {
                    Image("EmptyGlass")
                        .resizable()
                        .frame(width: 70.0, height: 70.0)
                })
            .padding(28)
            Text("\(drinkincrementer.numDrinks)")
                .font(.title)
            Button(action: {
                drinkincrementer.numDrinks += 1
                // add animation
                }, label: {
                    Image("FullGlass")
                        .resizable()
                        .frame(width: 30.0, height: 70.0)
                })
            .padding(50)
        }
    }
}

struct DrinkAddRemoveView_Previews: PreviewProvider {
    static var previews: some View {
        DrinkAddRemoveView(drinkincrementer: DrinkIncrementer())
    }
}
