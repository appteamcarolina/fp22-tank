//
//  Home.swift
//  tipsytracker
//
//  Created by Sarayu Yenumula on 4/19/22.
//
import SwiftUI

struct Home: View {
    
    @State var currentDate: Date = Date()
    
    var body: some View {
        
        ScrollView(.vertical, showsIndicators: false) {
            
            VStack(spacing: 20){
                
                // Custom Date Picker....
                CustomDatePicker(currentDate: $currentDate, tasks: [Task])
            }
            .padding(.vertical)
        }
        // Safe Area View...
        .safeAreaInset(edge: .bottom) {
            
            HStack{
                NavigationLink(destination: HangoverRatingView(rating: $rating)) {
                    Text("+ Hangover Rating")
                        .fontWeight(.bold)
                        .padding(.vertical)
                        .frame(maxWidth: .infinity)
                        .background(Color("Orange"),in: Capsule())
                }
                
                Button {
                    
                } label: {
                    Text("+ Hangover Rating")
                        .fontWeight(.bold)
                        .padding(.vertical)
                        .frame(maxWidth: .infinity)
                        .background(Color("Orange"),in: Capsule())
                }

                Button {
                    
                } label: {
                    Text("+ Alcohol")
                        .fontWeight(.bold)
                        .padding(.vertical)
                        .frame(maxWidth: .infinity)
                        .background(Color("Purple"),in: Capsule())
                }
            }
            .padding(.horizontal)
            .padding(.top,10)
            .foregroundColor(.white)
            .background(.ultraThinMaterial)
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
