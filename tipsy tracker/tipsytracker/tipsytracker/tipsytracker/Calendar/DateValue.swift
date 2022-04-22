//
//  DateValue.swift
//  tipsytracker
//
//  Created by Sarayu Yenumula on 4/19/22.
//
import SwiftUI

// Date Value Model
struct DateValue: Identifiable{
    var id = UUID().uuidString
    var day: Int
    var date: Date
}
