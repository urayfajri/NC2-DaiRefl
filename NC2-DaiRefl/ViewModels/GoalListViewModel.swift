//
//  GoalListViewModel.swift
//  NC2-DaiRefl
//
//  Created by Uray Muhamad Noor Fajri Widiansyah on 26/07/22.
//

import Foundation
import CoreData

class GoalListViewModel: ObservableObject {
    
    var goalName: String = ""
    var goalDate: Date = Date()
    var goalDescription: String = ""
    
    @Published var goals: [GoalViewModel] = []
    
    func getAllGoals() {
        goals = CoreDataManager.shared.getAllGoals().map(GoalViewModel.init)
    }
    
    func saveGoal() {
        let goal = Goal(context: CoreDataManager.shared.viewContext)
        goal.goalName = goalName
        goal.goalDate = goalDate
        goal.goalDescription = goalDescription
        
        CoreDataManager.shared.saveGoal()
    }
}


struct GoalViewModel {
    let goal: Goal
    
    var goalID: NSManagedObjectID {
        return goal.objectID
    }
    
    var goalName: String {
        return goal.goalName ?? ""
    }
    
    var goalDescription: String {
        return goal.goalDescription ?? ""
    }
    
    var goalDate: Date {
        return goal.goalDate ?? Date()
    }
    
    var goalTasks: NSSet {
        return goal.toMyTasks ?? []
    }
}
