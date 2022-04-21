//
//  SearchView.swift
//  tipsytracker
//
//  Created by Lauren Jones on 4/20/22.
//

import SwiftUI

struct SearchView: View {
    @ObservedObject var vm: DrinkListViewModel

    var body: some View {
        Text("Pick Your Poison")
            .font(.title3)
            .fontWeight(.semibold)
        HStack(spacing: 10){
            TextField("Search", text: $vm.searchTerm)
                .padding()
                Button(action: vm.getDrinks) {
                Image(systemName: "magnifyingglass")
                    .font(.system(size: 16, weight: .bold))
                    .foregroundColor(.gray) }
            .padding()
            .background(Color.primary.opacity(0.05))
            .cornerRadius(3.0)
    }

//    var searchButton: some View {
//        HStack {
//            Spacer()
//
//            Label("Search", systemImage: "magnifyingglass")
//                .frame(alignment: .center)
//                .foregroundColor(.white)
//
//            Spacer()
//        }
//        .background(Color.blue)
//    }
    }
}
    

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView(vm: DrinkListViewModel())
    }
}
