//
//  TaskViewModel.swift
//  tipsytracker
//
//  Created by Lauren Jones on 4/22/22.
//

import Foundation

struct TaskViewModel {
    private let task: Task
    
    init(task: Task) {
        self.task = task
    }
    
    var taskId: UUID {
        task.id
    }

    var taskTime: Date {
        task.time
    }

    var taskRating: Int {
        task.rating == nil ? 0 : task.rating!
    }
    
    var taskDescription: String {
        task.description == nil ? "" : task.description!
    }
}
