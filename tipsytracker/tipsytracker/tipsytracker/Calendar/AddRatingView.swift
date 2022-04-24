//
//  AddRatingView.swift
//  tipsytracker
//
//  Created by Sarayu Yenumula on 4/24/22.
//

import SwiftUI

struct AddRatingView: View {
    
    @State private var alcohol = ""
    @State private var rating = 3
    @State private var review = ""

    var body: some View {
        NavigationView{
            Form {
                Section{
                    TextField("Name of Alcohol", text: $alcohol)
                }
            }
        }
        Section{
            TextEditor(text: $review)
            
            Picker("Rating", selection: $rating){
                ForEach(0..<6){
                    Text(String($0))
                }
            }
        }
    header: {
        Text("Write a review")
    }
    }
}

struct AddRatingView_Previews: PreviewProvider {
    static var previews: some View {
        AddRatingView()
    }
}
