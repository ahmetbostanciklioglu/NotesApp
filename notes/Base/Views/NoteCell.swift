//
//  NoteCell.swift
//  notes
//
//  Created by Ahmet Bostanci on 26.04.2025.
//

import SwiftUI

struct NoteCell: View {
    @ObservedObject var passedNoteItem: NoteItem
    
    var body: some View {
        Text(passedNoteItem.name.stringValue)
            .padding(.horizontal)
    }
}

#Preview {
    NoteCell(passedNoteItem: NoteItem())
}
