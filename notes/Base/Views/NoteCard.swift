//
//  NoteCard.swift
//  notes
//
//  Created by Ahmet Bostanci on 25.04.2025.
//

import SwiftUI

struct NoteCard: View {
    @ObservedObject var viewModel: NoteViewModel
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        VStack {
            TextEditor(text: $viewModel.name)
                .poppins(.regular, 16)
                .padding()
                .toolbar {
                    ToolbarItem(placement: .topBarTrailing) {
                        Button("Save") {
                            if viewModel.saveAction() {
                                dismiss()
                            }
                        }
                    }
                }
                .navigationTitle("Notes")
                .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
//    NoteCard(viewModel: NoteViewModel(passedTaskItem: NoteItem()), con)
}
