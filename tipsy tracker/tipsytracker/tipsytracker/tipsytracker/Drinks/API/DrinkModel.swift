//
//  DrinkModel.swift
//  tipsytracker
//
//  Created by Lauren Jones on 4/20/22.
//

import Foundation

struct Response: Codable {
  let drinks: [Drink]
}

struct Drink: Codable {
    let idDrink: String
    let strDrink: String
    let strDrinkAlternate: String?
    let strVideo: String?
    let strCategory: String?
    let strDrinkThumb: String?
    let strIngredient1: String
    let strIngredient2: String?
    let strIngredient3: String?
    let strIngredient4: String?
    let strIngredient5: String?
    let strIngredient6: String?
    let strIngredient7: String?
    let strIngredient8: String?
    let strIngredient9: String?
    let strIngredient10: String?
    let strIngredient11: String?
    let strIngredient12: String?
    let strIngredient13: String?
    let strIngredient14: String?
    let strIngredient15: String?
}

extension Drink {
    static let example = Drink(
        idDrink: "11007",
        strDrink: "Margarita",
        strDrinkAlternate: nil,
        strVideo: nil,
        strCategory: "Ordinary Drink",
        strDrinkThumb: "",
        //strDrinkThumb: "www.thecocktaildb.com\images\media\drink\5noda61589575158.jpg",
        strIngredient1: "Tequila",
        strIngredient2: "Triple sec",
        strIngredient3: "Lime juice",
        strIngredient4: "Salt",
        strIngredient5: nil,
        strIngredient6: nil,
        strIngredient7: nil,
        strIngredient8: nil,
        strIngredient9: nil,
        strIngredient10: nil,
        strIngredient11: nil,
        strIngredient12: nil,
        strIngredient13: nil,
        strIngredient14: nil,
        strIngredient15: nil
    )
}
