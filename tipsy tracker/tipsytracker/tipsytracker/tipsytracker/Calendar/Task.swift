//
//  Task.swift
//  tipsytracker
//
//  Created by Sarayu Yenumula on 4/19/22.
//
import SwiftUI

//// Task Model and Sample Tasks
//// Array of Tasks
//struct Task: Identifiable{
//    var id = UUID().uuidString
//    //var title: String
//    var time: Date = Date()
//    var rating: Int
//    var description: String
//}
//
//// Total Task Meta View
//struct TaskMetaData: Identifiable{
//    var id = UUID().uuidString
//    var task: [Task]
//    var taskDate: Date
//}
//
//// sample Date for Testing
//func getSampleDate(offset: Int)->Date{
//    let calender = Calendar.current
//
//    let date = calender.date(byAdding: .day, value: offset, to: Date())
//
//    return date ?? Date()
//}
//
//// Sample Tasks
////var tasks: [TaskMetaData] = [
////
////    TaskMetaData(task: [
////
////        Task(title: "Hangover rating 2/10 with xyz alcohol")
////    ], taskDate: getSampleDate(offset: -3)),
////    TaskMetaData(task: [
////
////        Task(title: "Hangover rating 4/10 with xyz alcohol")
////    ], taskDate: getSampleDate(offset: -8)),
////    TaskMetaData(task: [
////
////
////        Task(title: "Hangover rating 6/10 with xyz alcohol")
////    ], taskDate: getSampleDate(offset: -22)),
////    TaskMetaData(task: [
////
////
////        Task(title: "Hangover rating 8/10 with xyz alcohol")
////    ], taskDate: getSampleDate(offset: -20)),
////]
