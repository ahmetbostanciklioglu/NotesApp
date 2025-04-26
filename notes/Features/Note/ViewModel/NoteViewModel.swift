//
//  NoteViewModel.swift
//  notes
//
//  Created by Ahmet Bostanci on 26.04.2025.
//

import CoreData
import SwiftUI

class NoteViewModel: ObservableObject {
    @Published var selectedTaskItem: NoteItem?
    @Published var name: String = ""
    @Published var createdAt: Date = Date()
    @Published var isShowingNewNote = false
    let context: NSManagedObjectContext
    
    init(passedTaskItem: NoteItem?, context: NSManagedObjectContext) {
         self.context = context
         if let taskItem = passedTaskItem {
             self.selectedTaskItem = taskItem
             self.name = taskItem.name ?? ""
             self.createdAt = taskItem.createdAt ?? Date()
         }
     }
    
    
    func saveAction() -> Bool {
        guard !name.isEmpty else { return false }
        
        let item = selectedTaskItem ?? NoteItem(context: context)
        item.name = name
        item.createdAt = createdAt
        
        do {
            try context.save()
            return true
        } catch {
            print("Failed to save: \(error.localizedDescription)")
            return false
        }
    }
    
    func addAction() {
        selectedTaskItem = nil
        name = ""
        createdAt = Date()
        isShowingNewNote = true
    }
}
