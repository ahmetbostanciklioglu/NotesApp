//
//  FloatingButton.swift
//  notes
//
//  Created by Ahmet Bostanci on 26.04.2025.
//

import SwiftUI

struct FloatingButton: View {
    @ObservedObject var viewModel: NoteViewModel
    
    var body: some View {
        Button(action: {
            viewModel.selectedTaskItem = nil
            viewModel.name = ""
            viewModel.createdAt = Date()
            isShowingNewNote = true
        }) {
            Text("+ New Task")
                .poppins(.bold, 20)
                .padding(15)
                .foregroundStyle(.white)
                .background(Color.accentColor)
                .clipShape(.capsule)
                .shadow(color: .black.opacity(0.3), radius: 3, x: 3, y: 3)
        }
        .padding()
    }
}

#Preview {
    FloatingButton(viewModel: NoteViewModel(passedTaskItem: nil, context: Preview.dev.context()))
}
