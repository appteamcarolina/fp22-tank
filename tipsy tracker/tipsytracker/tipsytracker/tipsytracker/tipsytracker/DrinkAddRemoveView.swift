//
//  DrinkAddRemoveView.swift
//  tipsytracker
//
//  Created by Lauren Jones on 4/19/22.
//

import SwiftUI

struct DrinkAddRemoveView: View {
    @State private var numDrinks = 0
    var body: some View {
        HStack {
            Button(action: {
                if (numDrinks == 0) {
                    numDrinks = 0
                } else {
                    numDrinks -= 1
                }
                }, label: {
                    Image("EmptyGlass")
                        .resizable()
                        .frame(width: 70.0, height: 70.0)
                })
            .padding(28)
            Text("\(numDrinks)")
                .font(.title)
            Button(action: {
                numDrinks += 1
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
        DrinkAddRemoveView()
    }
}
