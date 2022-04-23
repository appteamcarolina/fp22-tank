//
//  TaskModel.swift
//  tipsytracker
//
//  Created by Lauren Jones on 4/22/22.
//

import Foundation

struct TaskResponse: Codable {
  let tasks: [Task]
}

struct Task: Codable {
    var id = UUID()
    let time: Date
    let rating: Int?
    let description: String?
}
