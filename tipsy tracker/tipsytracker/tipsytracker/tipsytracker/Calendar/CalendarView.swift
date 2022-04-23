//
//  CalendarView.swift
//  tipsytracker
//
//  Created by Lauren Jones on 4/18/22.
//
import SwiftUI

struct CalendarView: View {
    
    @State var currentDate: Date = Date()
    
    var body: some View {
        
        ScrollView(.vertical, showsIndicators: false){
            
            VStack(spacing: 20){
                //Custom Date Picker
                CustomDatePicker(currentDate: $currentDate)
            }
        
        }
    }
}

struct CalendarView_Previews: PreviewProvider {
    static var previews: some View {
        CalendarView()
    }
}
