//
//  TaskListViewModel.swift
//  NC2-DaiRefl
//
//  Created by Uray Muhamad Noor Fajri Widiansyah on 28/07/22.
//

import Foundation
import CoreData

class TaskListViewModel: ObservableObject {
    
    var taskName: String = ""
    var taskDate: Date = Date()
    var taskDescription: String = ""
    
    @Published var tasks: [TaskViewModel] = []
    
    func getAllTasks() {
        tasks = CoreDataManager.shared.getAllTasks().map(TaskViewModel.init)
    }
    
    func saveTask() {
        let task = MyTask(context: CoreDataManager.shared.viewContext)
        task.taskName = taskName
        task.taskDate = taskDate
        task.taskDescription = taskDescription
        
        
        CoreDataManager.shared.saveTask()
    }
}


struct TaskViewModel {
    let task: MyTask
    
    var taskID: NSManagedObjectID {
        return task.objectID
    }
    
    var taskName: String {
        return task.taskName ?? ""
    }
    
    var taskDescription: String {
        return task.taskDescription ?? ""
    }

    var taskDate: Date {
        return task.taskDate ?? Date()
    }

}

