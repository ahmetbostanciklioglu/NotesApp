//
//  notesApp.swift
//  notes
//
//  Created by Ahmet Bostanci on 25.04.2025.
//

import CoreData
import SwiftUI

@main
struct NotesApp: App {
    let persistenceController = PersistenceController.shared
    

    var body: some Scene {
        WindowGroup {
            let context = persistenceController.container.viewContext
            NoteView()
                .environment(\.managedObjectContext, context)
        }
    }
}
