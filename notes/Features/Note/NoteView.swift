//
//  NoteView.swift
//  notes
//
//  Created by Ahmet Bostanci on 26.04.2025.
//

import CoreData
import SwiftUI

struct NoteView: View {
    @EnvironmentObject var dataHolder: DataHolder
    @Environment(\.managedObjectContext) private var viewContext
    
    @FetchRequest(sortDescriptors: [NSSortDescriptor(keyPath: \NoteItem.createdAt, ascending: true)], animation: .default)
    private var notes: FetchedResults<NoteItem>
    
    var body: some View {
        NavigationStack {
            VStack {
                ZStack(alignment: .top) {
                    List {
                        ForEach(notes) { noteItem in
                            NavigationLink {
                                NoteCard(passedTaskItem: noteItem)
                            } label: {
                                NoteCell(passedNoteItem: noteItem)
                                    .environmentObject(dataHolder)
                            }
                        }
                        .onDelete(perform: deleteItem)
                    }
                    .toolbar {
                        ToolbarItem(placement: .topBarTrailing) {
                            EditButton()
                        }
                    }
                }
                
                FloatingButton()
                
            }
            .navigationTitle("Notes")
        }
    }
    
    func deleteItem(at offsets: IndexSet) {
        withAnimation {
            offsets.map { notes[$0] }.forEach(viewContext.delete)
            
            dataHolder.saveContext(viewContext)
        }
    }
}

#Preview {
    NoteView()
        .environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
}
