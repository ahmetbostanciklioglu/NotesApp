//
//  DataHolder.swift
//  notes
//
//  Created by Ahmet Bostanci on 26.04.2025.
//

import CoreData
import SwiftUI

class DataHolder: ObservableObject {
    init(_ context: NSManagedObjectContext) { }
    
    func saveContext(_ context: NSManagedObjectContext) {
        do {
            try context.save()
        } catch {
            let nsError = error as NSError
            fatalError("Unresolved error \(nsError), \(nsError.userInfo)")
        }
    }
}
