//
//  Goal+CoreDataProperties.swift
//  NC2-DaiRefl
//
//  Created by Uray Muhamad Noor Fajri Widiansyah on 29/07/22.
//
//

import Foundation
import CoreData


extension Goal {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Goal> {
        return NSFetchRequest<Goal>(entityName: "Goal")
    }

    @NSManaged public var goalDate: Date?
    @NSManaged public var goalDescription: String?
    @NSManaged public var goalName: String?
    @NSManaged public var toMyTasks: NSSet?

}

// MARK: Generated accessors for toMyTasks
extension Goal {

    @objc(addToMyTasksObject:)
    @NSManaged public func addToToMyTasks(_ value: MyTask)

    @objc(removeToMyTasksObject:)
    @NSManaged public func removeFromToMyTasks(_ value: MyTask)

    @objc(addToMyTasks:)
    @NSManaged public func addToToMyTasks(_ values: NSSet)

    @objc(removeToMyTasks:)
    @NSManaged public func removeFromToMyTasks(_ values: NSSet)

}

extension Goal : Identifiable {

}
