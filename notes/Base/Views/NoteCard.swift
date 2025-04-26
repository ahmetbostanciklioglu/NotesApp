//
//  NoteCard.swift
//  notes
//
//  Created by Ahmet Bostanci on 25.04.2025.
//

import SwiftUI

struct NoteCard: View {
    @Environment(\.managedObjectContext) private var viewContext
    @Environment(\.dismiss) private var dismiss
    @EnvironmentObject var dataHolder: DataHolder

    @State var selectedTaskItem: NoteItem?
    @State var name: String
    @State var createdAt: Date
    
    init(passedTaskItem: NoteItem?) {
        if let taskItem = passedTaskItem {
            _selectedTaskItem = State(initialValue: taskItem)
            _name = State(initialValue: taskItem.name.stringValue)
            _createdAt = State(initialValue: Date())
        } else {
            _name = State(initialValue: "")
            _createdAt = State(initialValue: Date())
        }
    }
    
    
    var body: some View {
        VStack {
            TextEditor(text: $name)
                .poppins(.regular, 16)
                .padding()
                .toolbar {
                    Button("Save", action: saveAction)
                }
                .navigationTitle("Notes")
                .navigationBarTitleDisplayMode(.inline)
        }
    }
    
    func saveAction() {
        withAnimation {
            if selectedTaskItem == nil {
                selectedTaskItem = NoteItem(context: viewContext)
            }
            selectedTaskItem?.name = name
            selectedTaskItem?.createdAt = createdAt
            
            dataHolder.saveContext(viewContext)
            dismiss()
        }

    }
}

#Preview {
    NoteCard(passedTaskItem: NoteItem())
}
