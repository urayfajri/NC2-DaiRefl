//
//  MyTask+CoreDataProperties.swift
//  NC2-DaiRefl
//
//  Created by Uray Muhamad Noor Fajri Widiansyah on 29/07/22.
//
//

import Foundation
import CoreData


extension MyTask {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<MyTask> {
        return NSFetchRequest<MyTask>(entityName: "MyTask")
    }

    @NSManaged public var taskDate: Date?
    @NSManaged public var taskDescription: String?
    @NSManaged public var taskName: String?
    @NSManaged public var toGoal: Goal?
    @NSManaged public var toMyReflections: NSSet?

}

// MARK: Generated accessors for toMyReflections
extension MyTask {

    @objc(addToMyReflectionsObject:)
    @NSManaged public func addToToMyReflections(_ value: MyReflection)

    @objc(removeToMyReflectionsObject:)
    @NSManaged public func removeFromToMyReflections(_ value: MyReflection)

    @objc(addToMyReflections:)
    @NSManaged public func addToToMyReflections(_ values: NSSet)

    @objc(removeToMyReflections:)
    @NSManaged public func removeFromToMyReflections(_ values: NSSet)

}

extension MyTask : Identifiable {

}
