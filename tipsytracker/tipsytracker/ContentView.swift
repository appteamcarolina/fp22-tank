//
//  ContentView.swift
//  tipsytracker
//
//  Created by Lauren Jones on 4/18/22.
//

import SwiftUI

struct ContentView: View {
    // add so saves but user resets when fills out hangover survey after
    
    var body: some View {
        NavigationView()
        Spacer()
        ScrollView {
            VStack{
                DrinkAddRemoveView()
                DrinkOptionsView()
                    .padding(.horizontal)
            }
            // minus on left & add on right
            // spilled drink icon on left
            // empty drink on right if being cute
            // add animation for drink being emptied or fill back up for each instead
            // add a drink
            // three top drinks listed below (quick add) - later
            // calendar with drinking history
            // calendar will turn diff color if drank that day
            // can click on each day in calendar
            // when click lead to list of drinks
            // and hangover rating - can fill num stars or beers or something
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
