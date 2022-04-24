//
//  DrinkViewModel.swift
//  tipsytracker
//
//  Created by Lauren Jones on 4/20/22.
//

import Foundation

struct DrinkViewModel {
    private let drink: Drink
    
    init(drink: Drink) {
        self.drink = drink
    }
    
    var drinkName: String {
        drink.strDrink
    }

    var drinkID: String {
        drink.idDrink
    }

    var drinkAlternative: String {
        drink.strDrinkAlternate == nil ? "" : drink.strDrinkAlternate!
    }

    var drinkVideo: String {
        drink.strVideo == nil ? "" : drink.strVideo!
    }

    var drinkCategory: String {
        drink.strCategory == nil ? "" : drink.strCategory!
    }

    var drinkThumb: String {
        drink.strDrinkThumb == nil ? "" : drink.strDrinkThumb!
    }
    
    var drinkIngredient1: String {
        drink.strIngredient1
    }
    
    var drinkIngredient2: String {
        drink.strIngredient2 == nil ? "" : drink.strIngredient2!
    }
    
    var drinkIngredient3: String {
        drink.strIngredient3 == nil ? "" : drink.strIngredient3!
    }
    
    var drinkIngredient4: String {
        drink.strIngredient4 == nil ? "" : drink.strIngredient4!
    }
    
    var drinkIngredient5: String {
        drink.strIngredient5 == nil ? "" : drink.strIngredient5!
    }
    
    var drinkIngredient6: String {
        drink.strIngredient6 == nil ? "" : drink.strIngredient6!
    }
    
    var drinkIngredient7: String {
        drink.strIngredient7 == nil ? "" : drink.strIngredient7!
    }
    
    var drinkIngredient8: String {
        drink.strIngredient8 == nil ? "" : drink.strIngredient8!
    }
    
    var drinkIngredient9: String {
        drink.strIngredient9 == nil ? "" : drink.strIngredient9!
    }
    
    var drinkIngredient10: String {
        drink.strIngredient10 == nil ? "" : drink.strIngredient10!
    }
    
    var drinkIngredient11: String {
        drink.strIngredient11 == nil ? "" : drink.strIngredient11!
    }
    
    var drinkIngredient12: String {
        drink.strIngredient12 == nil ? "" : drink.strIngredient12!
    }
    
    var drinkIngredient13: String {
        drink.strIngredient13 == nil ? "" : drink.strIngredient13!
    }
    
    var drinkIngredient14: String {
        drink.strIngredient14 == nil ? "" : drink.strIngredient14!
    }
    
    var drinkIngredient15: String {
        drink.strIngredient15 == nil ? "" : drink.strIngredient15!
    }
    
//
//    var drinkIngredients: [String] {
//        drink.drinkIngredients == nil ? "" : (strIngredient1 + "," + strIngredient2 + "," + strIngredient3 + "," + strIngredient4 + "," + strIngredient5 + "," + strIngredient6 + "," + strIngredient7 + "," + strIngredient8 + "," + strIngredient9 + "," + strIngredient10 + "," + strIngredient11 + "," + strIngredient12 + "," + strIngredient13 + "," + strIngredient14 + "," + strIngredient15)
//    }
}

