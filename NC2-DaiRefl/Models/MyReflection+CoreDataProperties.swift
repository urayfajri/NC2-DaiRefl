//
//  MyReflection+CoreDataProperties.swift
//  NC2-DaiRefl
//
//  Created by Uray Muhamad Noor Fajri Widiansyah on 29/07/22.
//
//

import Foundation
import CoreData


extension MyReflection {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<MyReflection> {
        return NSFetchRequest<MyReflection>(entityName: "MyReflection")
    }

    @NSManaged public var reflectionName: String?
    @NSManaged public var reflectionDate: Date?
    @NSManaged public var reflectionDescription: String?
    @NSManaged public var toMyTask: MyTask?

}

extension MyReflection : Identifiable {

}
