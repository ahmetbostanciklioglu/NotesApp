//
//  DeveloperPreview.swift
//  notes
//
//  Created by Ahmet Bostanci on 25.04.2025.
//

import CoreData
import Foundation

class DeveloperPreview {
    static let instance = DeveloperPreview()
    
    private init() { }
    
    let persistenceController = PersistenceController.shared
    
    func context() -> NSManagedObjectContext {
       return persistenceController.container.viewContext
    }
    
}
