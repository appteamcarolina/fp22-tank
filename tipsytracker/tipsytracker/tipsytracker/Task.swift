//
//  Task.swift
//  tipsytracker
//
//  Created by Sarayu Yenumula on 4/19/22.
//

import SwiftUI

struct Task: Identifiable{
    var id = UUID().uuidString
    var title: String
    var time: Date = Date()
}

struct TaskMetaData: Identifiable{
    var id = UUID().uuidString
    var task: [Task]
    var taskDate: Date
}

func getSampleDate(offset: Int) -> Date{
    let calendar = Calendar.current
    let date = calendar.date(byAdding: .day, value: offset, to: Date())
    return date ?? Date()
}

var tasks: [TaskMetaData] = [
    
    TaskMetaData(task:[
        
        Task(title:"Hungover rating: 8"),
        Task(title: "I drank xyz")
    ], taskDate: getSampleDate(offset: 1)),
    TaskMetaData(task: [
        
        Task(title: "I felt pretty xyz")
    ], taskDate: getSampleDate(offset: -3)),
]
