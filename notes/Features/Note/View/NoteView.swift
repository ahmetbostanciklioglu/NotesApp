//
//  NoteView.swift
//  notes
//
//  Created by Ahmet Bostanci on 26.04.2025.
//

import CoreData
import SwiftUI

struct NoteView: View {
    @Environment(\.managedObjectContext) var context
    @FetchRequest(sortDescriptors: [NSSortDescriptor(keyPath: \NoteItem.createdAt, ascending: true)], animation: .default)
    var notes: FetchedResults<NoteItem>   
    
    @StateObject private var viewModel = NoteViewModel(passedTaskItem: nil, context: PersistenceController.shared.container.viewContext)
    
    var body: some View {
        NavigationStack {
            VStack {
                ZStack(alignment: .top) {
                    Group {
                        if notes.isEmpty {
                            ContentUnavailableView(
                                 label: {
                                     Label("No Notes Yet", systemImage: "note.text")
                                         .foregroundStyle(.secondary)
                                 },
                                 description: {
                                     Text("Tap the '+' button to create your first note")
                                         .foregroundStyle(.tertiary)
                                 },
                                 actions: {
                                     Button(action: viewModel.addAction) {
                                         Text("Create Note")
                                             .bold()
                                     }
                                 }
                             )
                             .offset(y: -50)
                        } else {
                            List {
                                ForEach(notes) { noteItem in
                                    NavigationLink {
                                        NoteCard(viewModel: NoteViewModel(passedTaskItem: noteItem, context: context))
                                    } label: {
                                        NoteCell(passedNoteItem: noteItem)
                                    }
                                }
                                .onDelete { offsets in
                                    offsets.map { notes[$0] }.forEach(context.delete)
                                    try? context.save()
                                }
                            }
                        }
                    }
                    .toolbar {
                        ToolbarItem(placement: .topBarTrailing) {
                            SaveButton(viewModel: viewModel)
                        }
                    }
                }
            }
            .navigationTitle("Notes")
            .sheet(isPresented: $viewModel.isShowingNewNote) {
                NavigationStack {
                    NoteCard(viewModel: NoteViewModel(passedTaskItem: nil, context: context))
                        .navigationBarTitle("New Note", displayMode: .inline)
                }
            }
        }
    }
}

#Preview {
    NoteView()
        .environment(\.managedObjectContext, Preview.dev.context())
}
