//
//  SearchResultsView.swift
//  tipsytracker
//
//  Created by Lauren Jones on 4/20/22.
//

import SwiftUI

struct SearchResultsView: View {
    @ObservedObject var vm: DrinkListViewModel
    @StateObject var drinkincrementer : DrinkIncrementer

    var body: some View {
            VStack {
                if vm.isLoading {
                    HStack {
                        Spacer()
                        ProgressView()
                        Spacer()
                    }
                } else {
                    ForEach(vm.drinks, id: \.idDrink) { drink in
                        Button(action: {
                            drinkincrementer.numDrinks += 1
                        }) {
                            DrinkView(drink: DrinkViewModel(drink: drink))
                        }
                        .buttonStyle(PlainButtonStyle())
                    }
                }
            }
        }
}

struct SeachResultsView_Previews: PreviewProvider {
    static var previews: some View {
        SearchResultsView(vm: DrinkListViewModel(), drinkincrementer: DrinkIncrementer())
    }
}

