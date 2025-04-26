//
//  FloatingButton.swift
//  notes
//
//  Created by Ahmet Bostanci on 26.04.2025.
//

import SwiftUI

struct SaveButton: View {
    @ObservedObject var viewModel: NoteViewModel
    
    var body: some View {
        Button(action: viewModel.addAction) {
            Image.AddIcon
        }
        .padding()
    }
    

}

#Preview {
    SaveButton(viewModel: NoteViewModel(passedTaskItem: nil, context: Preview.dev.context()))
}
