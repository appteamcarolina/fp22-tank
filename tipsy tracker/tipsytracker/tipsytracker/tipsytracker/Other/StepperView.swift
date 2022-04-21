//
//  StepperView.swift
//  tipsytracker
//
//  Created by Lauren Jones on 4/18/22.
//
import SwiftUI

struct StepperView: View {
    @State private var numDrinks = 0
        let drinkStep = 1
        let numDrinksRange = 0...50
    
    var body: some View {
        Stepper(value: $numDrinks,
                in: numDrinksRange,
                step: drinkStep) {
            Text("\(numDrinks)")
        }
    }
}

struct StepperView_Previews: PreviewProvider {
    static var previews: some View {
        StepperView()
    }
}
