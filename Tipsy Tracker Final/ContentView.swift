//
//  ContentView.swift
//  Tipsy Tracker Final
//
//  Created by Sarayu Yenumula on 4/18/22.
//

import SwiftUI

struct ContentView: View {
    // add so saves but user resets when fills out hangover survey after
    @State var stepperValue: Int = 0
    
    var body: some View {
            HStack{
            Label("Tipsy Tracker", systemImage: "Logo")
                .labelStyle(.titleAndIcon)
        // action should lead to settings
        // settings will include emergency contact
        Button(action: {}, label: {
            Image(systemName: "gear")
                .resizable()
                .aspectRatio(contentMode: .fit)
            .frame(width: 50, height: 50) })
        }
        VStack{
            StepperView()
        }.padding()
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

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

