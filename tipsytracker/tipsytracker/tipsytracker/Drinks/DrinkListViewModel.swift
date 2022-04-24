//
//  DrinkListViewModel.swift
//  tipsytracker
//
//  Created by Lauren Jones on 4/20/22.
//

import Foundation
import SwiftUI

class DrinkListViewModel: ObservableObject {
    @Published var searchTerm: String = ""
    
    @Published var drinks: [Drink] = []
    
    @Published var errorMessage: String = ""
    @Published var showError: Bool = false
    @Published var isLoading: Bool = false
  
    func getDrinks() {
        if searchTerm == "" {
            drinks = []
            return
        }
        
        DrinkService.getDrinks(term: searchTerm) { result in
            DispatchQueue.main.async {
                self.isLoading = false
                
                switch result {
                case .success(let drinks):
                    self.drinks = drinks
                case .failure(let error):
                    self.errorMessage = error.rawValue
                    self.showError = true
                }
            }
        }
    }
}
