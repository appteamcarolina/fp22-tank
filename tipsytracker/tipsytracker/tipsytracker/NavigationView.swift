//
//  NavigationBar.swift
//  tipsytracker
//
//  Created by Lauren Jones on 4/18/22.
//

import SwiftUI

struct NavigationView: View {
    var body: some View {
        HStack{
            Button(action: {
                //Calendar view
                }, label: {
                    Image(systemName: "calendar.badge.plus")
                        .colorInvert()
                })
            .padding()
            Spacer()
            Image("Logo")
                .resizable()
                .frame(width: 125.0, height: 80.0)
            Spacer()
            Button(action: {
                    // action should lead to settings
                    // settings will include emergency contact
                }, label: {
                    Image(systemName: "gear")
                        .colorInvert()
            })
            .padding()
        }
            
        VStack {
            Text("Tipsy Tracker")
                .font(.title)
                .fontWeight(.semibold)
            Text("What Are You Drinking Tonight?")
                .font(.subheadline)
                .fontWeight(.semibold)
        }
        Spacer()
    }
}

struct NavigationView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView()
    }
}
