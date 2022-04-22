//
//  ContentView.swift
//  tipsytracker
//
//  Created by Lauren Jones on 4/18/22.
//
import SwiftUI

struct ContentView: View {
    // add so saves but user resets when fills out hangover survey after
    // @State private var isShowingSettingsView = false
    @StateObject var vm = DrinkListViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                TopBarView()
//                Spacer()
                ScrollView {
                    VStack{
                        DrinkAddRemoveView()
                        SearchView(vm: vm)
                        if !vm.drinks.isEmpty || vm.isLoading {
                            SearchResultsView(vm: vm)
                        }
                        Spacer()
                    }
                }
                .alert(isPresented: $vm.showError, content: { alert })
            }
        }
    }
    
    var alert: Alert {
        Alert(title: Text("Something went wrong..."), message: Text(vm.errorMessage), dismissButton: .default(Text("OK")))
    }
    
    var backgroundGradient: LinearGradient {
        LinearGradient(colors: [Color.white, Color.blue],
                       startPoint: .top,
                       endPoint: .bottom)
    }
    
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

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
