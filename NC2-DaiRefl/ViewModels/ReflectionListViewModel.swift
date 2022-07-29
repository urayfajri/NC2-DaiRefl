//
//  ReflectionListViewModel.swift
//  NC2-DaiRefl
//
//  Created by Uray Muhamad Noor Fajri Widiansyah on 29/07/22.
//

import Foundation
import CoreData

class ReflectionListViewModel: ObservableObject {
    
    var reflectionName: String = ""
    var reflectionDate: Date = Date()
    var reflectionDescription: String = ""
    
    @Published var reflections: [ReflectionViewModel] = []
    
    func getReflections() {
        reflections = CoreDataManager.shared.getAllReflections().map(ReflectionViewModel.init)
    }
    
    func saveReflection() {
        let reflection = MyReflection(context: CoreDataManager.shared.viewContext)
        reflection.reflectionName = reflectionName
        reflection.reflectionDate = reflectionDate
        reflection.reflectionDescription = reflectionDescription
        
        CoreDataManager.shared.saveReflection()
    }
}


struct ReflectionViewModel {
    let reflection: MyReflection
    
    var taskID: NSManagedObjectID {
        return reflection.objectID
    }
    
    var reflectionName: String {
        return reflection.reflectionName ?? ""
    }
    
    var reflectionDescription: String {
        return reflection.reflectionDescription ?? ""
    }

    var reflectionDate: Date {
        return reflection.reflectionDate ?? Date()
    }

}
